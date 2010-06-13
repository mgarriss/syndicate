class ConstellationsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @constellations = Constellation.order(@sort).all
  end
  
  def show
    @constellation = Constellation.find(params[:id])
    @systems = @constellation.systems
  end

end
