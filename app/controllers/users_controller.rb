class UsersController < ApplicationController
  def new
  end

  def welcome
  end

  def create
    @user = User.new(
        email: params[:user][:email],
        password: params[:user][:password])
    @user.save!
    redirect_to '/game/start'
  end

  def show
  end
end
