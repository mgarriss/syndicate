require 'test_helper'

class FactionsControllerTest < ActionController::TestCase
  setup do
    Faction.delete_all
    user_sign_in
    @faction = Factory(:faction)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factions)
  end

  should "show faction" do
    get :show, :id => @faction.to_param
    assert_response :success
    assert_not_nil assigns(:faction)
  end
end
