require 'test_helper'

class ConstellationsControllerTest < ActionController::TestCase
  setup do
    Constellation.delete_all
    Region.delete_all
    user_sign_in
    @constellation = Factory(:constellation)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constellations)
  end

  should "show constellation" do
    get :show, :id => @constellation.to_param
    assert_response :success
    assert_not_nil assigns(:constellation)
    assert_not_nil assigns(:systems)
  end
end
