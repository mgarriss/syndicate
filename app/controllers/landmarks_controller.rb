class LandmarksController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @landmarks = Landmark.order(@sort).paginate(:page => params[:page], :per_page => Landmark.per_page)
  end
  
  def show
    @landmark = Landmark.find(params[:id])
  end
end
