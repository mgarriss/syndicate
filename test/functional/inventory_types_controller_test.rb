require 'test_helper'

class InventoryTypesControllerTest < ActionController::TestCase
  setup do
    InventoryType.delete_all
    user_sign_in
    @inventory_type = Factory(:inventory_type)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_types)
  end

  should "get show inventory type" do
    get :show, :id => @inventory_type.to_param
    assert_response :success
    assert_not_nil assigns(:inventory_type)
  end
end
