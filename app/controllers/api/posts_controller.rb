class Api::PostsController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :doorkeeper_authorize!

  def index
    query = Post.all.order("created_at desc")
    query = query.page(params[:page])
    query = query.per(25)
    @posts = query
  end

  def show
    @post = Post.find_by id: params[:id]
  end

  def create
    @post = Post.new post_params
    if @post.save
      render :show
    else
      render json: @post.errors, status: 422
    end
  end

  def update
    @post = Post.find_by id: params[:id]
    if @post.update post_params
      render :show
    else
      render json: @post.errors, status: 422
    end
  end

  def destroy
    @post = Post.find_by id: params[:id]
    @post.destroy
    head :ok
  end

  private

  def current_user
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
