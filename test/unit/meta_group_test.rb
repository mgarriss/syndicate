require 'test_helper'

class MetaGroupTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      MetaGroup.delete_all
      @meta_group = Factory(:meta_group)
    end
    
    should "be valid" do
      assert @meta_group.valid?
    end
  end
end
