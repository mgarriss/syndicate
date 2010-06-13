class UniversesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @universes = Universe.order(@sort).all
  end
  
  def show
    @universe = Universe.find(params[:id])
  end
end
