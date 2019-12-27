class UsersController < ApplicationController
  def welcome
  end

  def index
    @user = User.all
  end

  def test

  end
end
