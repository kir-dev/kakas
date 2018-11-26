class UsersController < ApplicationController
  before_action :require_admin, except: [:index]
  before_action :set_user, only: [:update, :edit, :destroy]

  def index
  end

  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    @user = User.find(params[:id])
     if @user.update(user_params)
       redirect_to users_path
     else
       render 'edit'
     end
  end

  def edit
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:admin)
    end
end
