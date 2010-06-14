require 'test_helper'

class UniversesControllerTest < ActionController::TestCase
  setup do
    user_sign_in
    @universe = Factory(:universe)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:universes)
  end

  should "get show universe" do
    get :show, :id => @universe.to_param
    assert_response :success
    assert_not_nil assigns(:universe)
  end
end
