class MarketGroupsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @market_groups = MarketGroup.order(@sort).paginate(:page => params[:page], :per_page => MarketGroup.per_page)
  end
  
  def show
    @market_group = MarketGroup.find(params[:id])
  end
end
