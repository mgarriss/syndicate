require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      @admin = Factory(:admin)
    end
    
    should "be valid" do
      assert @admin.valid?
    end
  end
end
