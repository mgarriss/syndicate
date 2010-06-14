class BloodlinesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @bloodlines = Bloodline.order(@sort).paginate(:page => params[:page], :per_page => Bloodline.per_page)
  end
  
  def show
    @bloodline = Bloodline.find(params[:id])
  end
end
