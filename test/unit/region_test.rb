require 'test_helper'

class RegionTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      @region = Factory(:region)
    end
    
    should "be valid" do
      assert @region.valid?
    end
  end
end
