class InventoryTypesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @inventory_types = InventoryType.includes(:group,:inventory_category,:parent).order(@sort['inventory_types']).paginate(:page => params[:page], :per_page => InventoryType.per_page)
  end
  
  def show
    @inventory_type = InventoryType.includes(:group,:inventory_category,:race).find(params[:id])
    @inventory_types = @inventory_type.children
  end
end
