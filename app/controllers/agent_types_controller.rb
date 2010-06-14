class AgentTypesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @agent_types = AgentType.order(@sort).paginate(:page => params[:page], :per_page => AgentType.per_page)
  end
  
  def show
    @agent_type = AgentType.find(params[:id])
  end
end
