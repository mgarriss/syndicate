require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    Group.delete_all
    user_sign_in
    @group = Factory(:group)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  should "get show group" do
    get :show, :id => @group.to_param
    assert_response :success
    assert_not_nil assigns(:group)
  end
end
