module Ltm
  class UsersController < ApplicationController
    def index
      @users = Ltm::User.all
    end
    def new
      @user = User.new
    end
    def create
      @user = User.create(user_params)
      if @user.save
        redirect_to users_path, notice: "User created"
      else
        render :new
      end
    end

    def show
      @user = User.find(params[:id])
      @users = User.all
    end
    def edit
      @user = User.find(params[:id])
    end
    def update
      @user = User.find(params[:id])
      if @user.save
        redirect_to users_path, notice: "User updated"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    private
    def user_params
      params.require(:user).permit(:username, :password)
    end
  end
end
