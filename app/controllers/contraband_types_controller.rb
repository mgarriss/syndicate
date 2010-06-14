class ContrabandTypesController < ApplicationController
  before_filter :authenticate_user!
  
  # def index
  #   @contraband_types = ContrabandType.order(@sort).paginate(:page => params[:page], :per_page => ContrabandType.per_page)
  # end
  
  # def show
  #   @contraband_type = ContrabandType.find([params[:faction_id],params[:type_id]])
  # end
end
