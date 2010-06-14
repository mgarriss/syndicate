class EveNamesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @eve_names = EveName.order(@sort).paginate(:page => params[:page], :per_page => EveName.per_page)
  end
  
  def show
    @eve_name = EveName.find(params[:id])
  end
end
