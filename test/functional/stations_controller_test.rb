require 'test_helper'

class StationsControllerTest < ActionController::TestCase
  setup do
    Station.delete_all
    user_sign_in
    @station = Factory(:station)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stations)
  end

  should "get show station" do
    get :show, :id => @station.to_param
    assert_response :success
    assert_not_nil assigns(:station)
  end
end
