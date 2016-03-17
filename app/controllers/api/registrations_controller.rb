class Api::RegistrationsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    @user = User.new user_params
    if @user.save
      # render api/registrations/user.json.jbuilder
    else
      render json: @user.errors, status: 422
    end
  end

  def user_params
    params.requre(:user).permit(:username, :password)
  end
end
