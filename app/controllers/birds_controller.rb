class BirdsController < ApplicationController
  def index
    birds = bird.all
    render json: birds
  end

  def show
    bird = bird.find(params[:id])
    if bird
      render json: bird
    else
      render json: { error: "Bird not found" }, status: 404
    end
  end
end
