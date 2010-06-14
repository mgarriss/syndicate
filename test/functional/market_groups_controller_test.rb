require 'test_helper'

class MarketGroupsControllerTest < ActionController::TestCase
  setup do
    MarketGroup.delete_all
    user_sign_in
    @market_group = Factory(:market_group)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:market_groups)
  end

  should "get show market group" do
    get :show, :id => @market_group.to_param
    assert_response :success
    assert_not_nil assigns(:market_group)
  end
end
