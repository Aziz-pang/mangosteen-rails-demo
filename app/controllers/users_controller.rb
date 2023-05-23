class UsersController < ApplicationController
  def index
    user = User.page().per(10)
    render json: user
  end

  def create
    user = User.new name: 'pang', email: params[:email]
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  def show
    user = User.find_by_id params[:id]
    if user
      render json: user
    else
      head 404
    end
  end
end
