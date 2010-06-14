class TypeReactionsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @type_reactions = TypeReaction.order(@sort).paginate(:page => params[:page], :per_page => TypeReaction.per_page)
  end
  
  def show
    @type_reaction = TypeReaction.find(params[:id])
  end
end
