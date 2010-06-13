require 'test_helper'

EveSql.load 'tyr10-mapConstellations-mysql5-v1.sql'

class ConstellationTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      @constellation = Factory(:constellation)
    end
    
    should "be valid" do
      assert @constellation.valid?
    end
  end
end
