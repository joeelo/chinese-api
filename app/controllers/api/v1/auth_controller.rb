class Api::V1::AuthController < ApplicationController

  def create
    @user = User.find_by(username: user_login_params[:email])
    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, jwt: token}
    else 
      render json: {message: "invalid username or password"}
    end
  end

  def show
    @user = current_user
    if @user 
      render json: {user: @user}
    else
      render json: {message: "invalid username or password"}
    end
  end

  private 

  def user_login_params
    params.require(:user).permit(:email, :password)
  end

end
