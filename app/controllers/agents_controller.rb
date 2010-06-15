class AgentsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @agents = Agent.order(@sort['agents']).paginate(:page => params[:page], :per_page => Agent.per_page)
  end
  
  def show
    @agent = Agent.find(params[:id])
  end
end
