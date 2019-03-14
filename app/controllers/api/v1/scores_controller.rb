class Api::V1::ScoresController < ApplicationController

  def index
    @scores = Score.all
    render json: @scores
  end

  def create 
    @score = Score.create(scores_params)
    render json: @score
  end

  def get_scores 
    @user = User.find(params[:id])
    render json: @user.scores
  end

  private

  def scores_params
    params.require(:score).permit(:user_id, :points)
  end

end
