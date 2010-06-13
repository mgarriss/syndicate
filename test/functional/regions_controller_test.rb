require 'test_helper'

class RegionsControllerTest < ActionController::TestCase
  setup do
    Region.delete_all
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
    assert_not_nil assigns(:region)
    assert_not_nil assigns(:constellations)
    assert_not_nil assigns(:systems)
  end
end
