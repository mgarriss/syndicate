require 'test_helper'

EveSql.load 'tyr10-mapUniverse-mysql5-v1.sql'

class UniverseTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      @universe = Factory(:universe)
    end
    
    should "be valid" do
      assert @universe.valid?
    end
  end
end
