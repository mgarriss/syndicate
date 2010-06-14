require 'test_helper'

class MetaTypesControllerTest < ActionController::TestCase
  setup do
    MetaType.delete_all
    user_sign_in
    @meta_type = Factory(:meta_type)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meta_types)
  end

  should "get show meta type" do
    get :show, :id => @meta_type.to_param
    assert_response :success
    assert_not_nil assigns(:meta_type)
  end
end
