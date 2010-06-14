require 'test_helper'

class RacesControllerTest < ActionController::TestCase
  setup do
    Race.delete_all
    user_sign_in
    @race = Factory(:race)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:races)
  end

  should "get show race" do
    get :show, :id => @race.to_param
    assert_response :success
    assert_not_nil assigns(:race)
  end
end
