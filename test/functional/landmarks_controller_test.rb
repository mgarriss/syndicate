require 'test_helper'

class LandmarksControllerTest < ActionController::TestCase
  setup do
    Landmark.delete_all
    user_sign_in
    @landmark = Factory(:landmark)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landmarks)
  end

  should "get show landmark" do
    get :show, :id => @landmark.to_param
    assert_response :success
    assert_not_nil assigns(:landmark)
  end
end
