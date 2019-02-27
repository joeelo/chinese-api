class Api::V1::UsersController < ApplicationController

  def index 
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
    
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: @user, jwt: @token }
    else 
      render json: {error: "failed to create user" }
    end

  end

  private 

  def user_params
    params.require(:user).permit(:email, :password)
  end 
end
