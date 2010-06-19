class RegionsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @regions = Region.order(@sort['regions']).all
  end
  
  def show
    @region = Region.includes(:constellations,:systems).find(params[:id])
    @constellations = @region.constellations.order(@sort['constellations']).all
    @systems = @region.systems.order(@sort['systems']).all
  end
end
