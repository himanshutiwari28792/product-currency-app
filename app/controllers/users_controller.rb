class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
    json_response(@users)
  end

  def show
    json_response(@user)
  end

  private

  def user_params
    # whitelist params
    params.permit(:name, :email, :number, :created_at)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
