class GardensController < ApplicationController
  def new
  end

  def index
    @gardens = Garden.all
  end

  def create
  end

  def show
    @garden = Garden.find(params[:id])
    @plants = @garden.plants
  end
end
