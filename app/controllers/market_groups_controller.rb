class MarketGroupsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    if params[:top_level]
      @market_groups = MarketGroup.parents.order(@sort['market_groups']).paginate(:page => params[:page], :per_page => MarketGroup.per_page)
    elsif params[:parent] 
      @market_groups = MarketGroup.order(@sort['market_groups']).paginate(:page => params[:page], :per_page => MarketGroup.per_page)
    end
  end
  
  def show
    @market_group = MarketGroup.find(params[:id])
  end
end
