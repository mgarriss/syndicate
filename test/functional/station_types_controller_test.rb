require 'test_helper'

class StationTypesControllerTest < ActionController::TestCase
  setup do
    StationType.delete_all
    user_sign_in
    @station_type = Factory(:station_type)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:station_types)
  end

  should "get show station type" do
    get :show, :id => @station_type.to_param
    assert_response :success
    assert_not_nil assigns(:station_type)
  end
end
