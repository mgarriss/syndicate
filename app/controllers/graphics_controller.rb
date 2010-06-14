class GraphicsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @graphics = Graphic.order(@sort).paginate(:page => params[:page], :per_page => Graphic.per_page)
  end
  
  def show
    @graphic = Graphic.find(params[:id])
  end
end
