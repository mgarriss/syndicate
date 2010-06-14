require 'test_helper'

class EveNamesControllerTest < ActionController::TestCase
  setup do
    EveName.delete_all
    user_sign_in
    @eve_name = Factory(:eve_name)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eve_names)
  end

  should "get show eve name" do
    get :show, :id => @eve_name.to_param
    assert_response :success
    assert_not_nil assigns(:eve_name)
  end
end
