class StationTypesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @station_types = StationType.order(@sort).paginate(:page => params[:page], :per_page => StationType.per_page)
  end
  
  def show
    @station_type = StationType.find(params[:id])
  end
end
