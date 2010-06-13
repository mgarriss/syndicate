class <%= file_name.pluralize.camelize %>Controller < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @<%= file_name.pluralize %> = <%= file_name.camelize %>.order(@sort).paginate(:page => params[:page], :per_page => <%= file_name.camelize %>.per_page)
  end
  
  def show
    @<%= file_name %> = <%= file_name.camelize %>.find(params[:id])
  end
end
