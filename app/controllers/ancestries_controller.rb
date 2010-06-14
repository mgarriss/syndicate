class AncestriesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @ancestries = Ancestry.order(@sort).paginate(:page => params[:page], :per_page => Ancestry.per_page)
  end
  
  def show
    @ancestry = Ancestry.find(params[:id])
  end
end
