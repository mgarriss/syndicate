require 'test_helper'

class AgentsControllerTest < ActionController::TestCase
  setup do
    Agent.delete_all
    user_sign_in
    @agent = Factory(:agent)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agents)
  end

  should "get show agent" do
    get :show, :id => @agent.to_param
    assert_response :success
    assert_not_nil assigns(:agent)
  end
end
