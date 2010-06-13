class RegionsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @regions = Region.order(@sort).all
  end
  
  def show
    @region = Region.includes(:constellations,:systems).find(params[:id])
    @constellations = @region.constellations.all
    @systems = @region.systems.all
  end
end
