require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Group.delete_all
      @group = Factory(:group)
    end
    
    should "be valid" do
      assert @group.valid?
    end
  end
end
