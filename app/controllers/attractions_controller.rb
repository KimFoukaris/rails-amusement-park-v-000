class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
    current_user
  end

  def show
    @attraction = Attraction.find(params[:id])
    current_user
  end

  def new
    @attraction = Attraction.new
  end

  def create
    
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
  end
  
end
