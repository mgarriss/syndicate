require 'test_helper'

class TypeMaterialsControllerTest < ActionController::TestCase
  setup do
    TypeMaterial.delete_all
    user_sign_in
    @type_material = Factory(:type_material)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_materials)
  end

  should "get show type material" do
    get :show, :id => @type_material.to_param
    assert_response :success
    assert_not_nil assigns(:type_material)
  end
end
