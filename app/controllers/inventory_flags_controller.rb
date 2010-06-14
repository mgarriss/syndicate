class InventoryFlagsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @inventory_flags = InventoryFlag.order(@sort).paginate(:page => params[:page], :per_page => InventoryFlag.per_page)
  end
  
  def show
    @inventory_flag = InventoryFlag.find(params[:id])
  end
end
