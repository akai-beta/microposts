class UserController < ApplicationController
  def index
    @user = User.all.page(params[:page])
  end

  def show
  end

  def new
  end

  def create
  end
end
