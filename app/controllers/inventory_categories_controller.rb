class InventoryCategoriesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @inventory_categories = InventoryCategory.order(@sort['inventory_categories']).paginate(
      :page => params[:page], :per_page => InventoryCategory.per_page)
  end
  
  def show
    @inventory_category = InventoryCategory.includes(:groups, :inventory_types).find(params[:id])
    @groups = @inventory_category.groups.order(@sort['inventory_categories'])
    @inventory_types = @inventory_category.inventory_types.order(@sort['inventory_types'])
  end
end
