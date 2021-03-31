class UsersController < ApplicationController
  def index
    # render plain: "I'm in the index action!"
    users = User.all

    render json: users
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity #422
    end
  end

  def show
    render json: params
  end

  def update

  end

  def destroy

  def user_params
    params.require(:user).permit(:name, :email)
  end
end