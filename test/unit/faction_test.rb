require 'test_helper'

EveSql.load 'tyr10-chrFactions-mysql5-v1.sql'

class FactionTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      @faction = Factory(:faction)
    end
    
    should "be valid" do
      assert @faction.valid?
    end
  end
end
