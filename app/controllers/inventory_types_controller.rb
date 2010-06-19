class InventoryTypesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @inventory_types = InventoryType.includes(:group).order(@sort['inventory_types']).paginate(:page => params[:page], :per_page => InventoryType.per_page)
  end
  
  def show
    @inventory_type = InventoryType.find(params[:id])
  end
end
