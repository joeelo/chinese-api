class Api::V1::LikesController < ApplicationController

  def index
    @likes = Like.all
    render json: @likes
  end

  def create
    @like = Like.create(like_params)
    render json: @like
  end

  private

  def like_params
    params.permit(:character_id, :user_id)
  end

  
end
