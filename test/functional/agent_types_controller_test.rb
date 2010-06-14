require 'test_helper'

class AgentTypesControllerTest < ActionController::TestCase
  setup do
    AgentType.delete_all
    user_sign_in
    @agent_type = Factory(:agent_type)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agent_types)
  end

  should "get show agent type" do
    get :show, :id => @agent_type.to_param
    assert_response :success
    assert_not_nil assigns(:agent_type)
  end
end
