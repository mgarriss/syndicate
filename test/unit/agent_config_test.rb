require 'test_helper'

class AgentConfigTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      AgentConfig.delete_all
      @agent_config = Factory(:agent_config)
    end
    
    should "be valid" do
      assert @agent_config.valid?
    end
  end
end
