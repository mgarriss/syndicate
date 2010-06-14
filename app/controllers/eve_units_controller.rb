class EveUnitsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @eve_units = EveUnits.order(@sort).paginate(:page => params[:page], :per_page => EveUnits.per_page)
  end
  
  def show
    @eve_units = EveUnits.find(params[:id])
  end
end
