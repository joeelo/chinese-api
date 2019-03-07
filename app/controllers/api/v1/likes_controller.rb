class Api::V1::LikesController < ApplicationController

  def index
    @likes = Like.all
    render json: @likes
  end

  def create
    @like = Like.create(like_params)
    render json: @like
  end

  def get_likes
    @user = User.find(params[:id])
    render json: @user.characters
  end

  def destroy
    @like = Like.find_by(user_id: params[:user_id], character_id: params[:character_id])
    @like.destroy
    render json: {message: "destroyed"}
  end

  private

  def like_params
    params.permit(:character_id, :user_id)
  end

  
end
