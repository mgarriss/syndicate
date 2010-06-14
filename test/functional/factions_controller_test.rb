require 'test_helper'

class FactionsControllerTest < ActionController::TestCase
  setup do
    user_sign_in
    @faction = Factory(:faction)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factions)
  end

  should "get show faction" do
    get :show, :id => @faction.to_param
    assert_response :success
    assert_not_nil assigns(:faction)
  end
end
