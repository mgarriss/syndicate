require 'test_helper'

class RegionTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      @faction = Factory(:faction)
    end
    
    should "be valid" do
      assert @faction.valid?
    end
  end
end
