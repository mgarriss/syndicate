class CharacterAttributesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @character_attributes = CharacterAttribute.order(@sort).paginate(:page => params[:page], :per_page => CharacterAttribute.per_page)
  end
  
  def show
    @character_attribute = CharacterAttribute.find(params[:id])
  end
end
