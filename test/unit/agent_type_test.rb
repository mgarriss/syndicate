require 'test_helper'

class AgentTypeTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      AgentType.delete_all
      @agent_type = Factory(:agent_type)
    end
    
    should "be valid" do
      assert @agent_type.valid?
    end
  end
end
