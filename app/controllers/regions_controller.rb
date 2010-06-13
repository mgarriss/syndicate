class RegionsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @regions = Region.all
  end
  
  def show
    @region = Region.find(params[:id])
  end
end
