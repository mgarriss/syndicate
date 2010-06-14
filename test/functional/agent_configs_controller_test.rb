require 'test_helper'

class AgentConfigsControllerTest < ActionController::TestCase
  setup do
    AgentConfig.delete_all
    user_sign_in
    @agent_config = Factory(:agent_config)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agent_configs)
  end

  should "get show agent config" do
    get :show, :id => @agent_config.to_param
    assert_response :success
    assert_not_nil assigns(:agent_config)
  end
end
