class InventoryCategoriesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @inventory_categories = InventoryCategory.order(@sort).paginate(:page => params[:page], :per_page => InventoryCategory.per_page)
  end
  
  def show
    @inventory_category = InventoryCategory.find(params[:id])
  end
end
