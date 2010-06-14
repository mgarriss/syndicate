class StationsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @stations = Station.order(@sort).paginate(:page => params[:page], :per_page => Station.per_page)
  end
  
  def show
    @station = Station.find(params[:id])
  end
end
