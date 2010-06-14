require 'test_helper'

class BloodlinesControllerTest < ActionController::TestCase
  setup do
    Bloodline.delete_all
    user_sign_in
    @bloodline = Factory(:bloodline)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloodlines)
  end

  should "get show bloodline" do
    get :show, :id => @bloodline.to_param
    assert_response :success
    assert_not_nil assigns(:bloodline)
  end
end
