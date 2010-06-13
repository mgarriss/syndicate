require 'test_helper'

EveSql.load 'tyr10-mapSolarSystems-mysql5-v1.sql'

class SystemsControllerTest < ActionController::TestCase
  setup do
    user_sign_in
    @system = Factory(:system)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:systems)
  end

  should "show system" do
    get :show, :id => @system.to_param
    assert_response :success
    assert_not_nil assigns(:system)
  end
end
