class RacesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @races = Race.order(@sort['races']).paginate(:page => params[:page], :per_page => Race.per_page)
  end
  
  def show
    @race = Race.find(params[:id])
  end
end
