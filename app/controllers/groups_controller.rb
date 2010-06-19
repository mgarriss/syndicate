class GroupsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @groups = Group.order(@sort['groups']).paginate(:page => params[:page], :per_page => Group.per_page)
  end
  
  def show
    @group = Group.includes(:inventory_types).find(params[:id])
    @inventory_types = @group.inventory_types.order(@sort['inventory_types'])
  end
end
