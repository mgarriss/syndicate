class ConstellationsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @constellations = Constellation.order(@sort['constellations']).all
  end
  
  def show
    @constellation = Constellation.find(params[:id])
    @systems = @constellation.systems.order(@sort['systems'])
  end

end
