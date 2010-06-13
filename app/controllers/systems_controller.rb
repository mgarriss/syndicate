class SystemsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @systems = System.order(@sort).paginate(:page => params[:page], :per_page => System.per_page)
  end
  
  def show
    @system = System.find(params[:id])
 end

end
