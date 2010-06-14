require 'test_helper'

class InventoryCategoriesControllerTest < ActionController::TestCase
  setup do
    InventoryCategory.delete_all
    user_sign_in
    @inventory_category = Factory(:inventory_category)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_categories)
  end

  should "get show inventory category" do
    get :show, :id => @inventory_category.to_param
    assert_response :success
    assert_not_nil assigns(:inventory_category)
  end
end
