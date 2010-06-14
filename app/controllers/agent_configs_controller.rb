class AgentConfigsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @agent_configs = AgentConfig.order(@sort).paginate(:page => params[:page], :per_page => AgentConfig.per_page)
  end
  
  def show
    @agent_config = AgentConfig.find(params[:id])
  end
end
