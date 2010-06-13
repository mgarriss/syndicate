class FactionsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @factions = Faction.order(@sort).all
  end
  
  def show
    @faction = Faction.find(params[:id])
  end
end
