class Api::UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def show
    @user = User.find_by id: current_user.id
  end

  def create
    @user = User.new user_params
    if @user.save
      render :show
    else
      render json: @user.errors, status: 422
    end
  end

  def delete
    @user = User.find_by id: current_user.id
    @user.destroy
    head :ok
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def current_user
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

end
