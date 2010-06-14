require 'test_helper'

class MetaGroupsControllerTest < ActionController::TestCase
  setup do
    MetaGroup.delete_all
    user_sign_in
    @meta_group = Factory(:meta_group)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meta_groups)
  end

  should "get show meta group" do
    get :show, :id => @meta_group.to_param
    assert_response :success
    assert_not_nil assigns(:meta_group)
  end
end
