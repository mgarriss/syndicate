require 'test_helper'

class AgentTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Agent.delete_all
      @agent = Factory(:agent)
    end
    
    should "be valid" do
      assert @agent.valid?
    end
  end
end
