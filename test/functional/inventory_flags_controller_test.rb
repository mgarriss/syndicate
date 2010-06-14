require 'test_helper'

class InventoryFlagsControllerTest < ActionController::TestCase
  setup do
    InventoryFlag.delete_all
    user_sign_in
    @inventory_flag = Factory(:inventory_flag)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_flags)
  end

  should "get show inventory flag" do
    get :show, :id => @inventory_flag.to_param
    assert_response :success
    assert_not_nil assigns(:inventory_flag)
  end
end
