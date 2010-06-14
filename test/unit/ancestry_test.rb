require 'test_helper'

class AncestryTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Ancestry.delete_all
      @ancestry = Factory(:ancestry)
    end
    
    should "be valid" do
      assert @ancestry.valid?
    end
  end
end
