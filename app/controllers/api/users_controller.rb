class Api::UsersController < ApplicationController
  before_action :doorkeeper_authorize!
  protect_from_forgery with: :null_session

  def show
    @user = User.find_by id: current_user.id
  end

  private

  def current_user
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

end
