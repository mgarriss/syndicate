class MetaGroupsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @meta_groups = MetaGroup.order(@sort['meta_groups']).paginate(:page => params[:page], :per_page => MetaGroup.per_page)
  end
  
  def show
    @meta_group = MetaGroup.find(params[:id])
  end
end
