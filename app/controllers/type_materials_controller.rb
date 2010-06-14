class TypeMaterialsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @type_materials = TypeMaterial.order(@sort).paginate(:page => params[:page], :per_page => TypeMaterial.per_page)
  end
  
  def show
    @type_material = TypeMaterial.find(params[:id])
  end
end
