class ResearchAgentsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @research_agents = ResearchAgent.order(@sort).paginate(:page => params[:page], :per_page => ResearchAgent.per_page)
  end
  
  def show
    @research_agent = ResearchAgent.find(params[:id])
  end
end
