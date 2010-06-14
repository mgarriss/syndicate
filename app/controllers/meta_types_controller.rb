class MetaTypesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @meta_types = MetaType.order(@sort).paginate(:page => params[:page], :per_page => MetaType.per_page)
  end
  
  def show
    @meta_type = MetaType.find(params[:id])
  end
end
