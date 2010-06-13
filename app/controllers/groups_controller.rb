class GroupsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @groups = Group.order(@sort).paginate(:page => params[:page], :per_page => Group.per_page)
  end
  
  def show
    @group = Group.find(params[:id])
  end
end
