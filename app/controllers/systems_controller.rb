class SystemsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @systems = System.order(@sort).all
  end
  
  def show
    @system = System.find(params[:id])
 end

end
