require 'test_helper'

EveSql.load 'tyr10-mapRegions-mysql5-v1.sql'

class RegionsControllerTest < ActionController::TestCase
  setup do
    user_sign_in
    @region = Factory(:region)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regions)
  end

  should "show region" do
    get :show, :id => @region.to_param
    assert_response :success
  end
end
