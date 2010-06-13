require 'test_helper'

class SystemTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      @system = Factory(:system)
    end
    
    should "be valid" do
      assert @system.valid?
    end
  end
end
