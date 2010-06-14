require 'test_helper'

class AncestriesControllerTest < ActionController::TestCase
  setup do
    Ancestry.delete_all
    user_sign_in
    @ancestry = Factory(:ancestry)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ancestries)
  end

  should "get show ancestry" do
    get :show, :id => @ancestry.to_param
    assert_response :success
    assert_not_nil assigns(:ancestry)
  end
end
