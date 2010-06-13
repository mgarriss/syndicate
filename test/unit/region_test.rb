require 'test_helper'

EveSql.load 'tyr10-mapRegions-mysql5-v1.sql'

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
