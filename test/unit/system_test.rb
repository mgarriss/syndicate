require 'test_helper'

EveSql.load 'tyr10-mapSolarSystems-mysql5-v1.sql'

class SystemTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      @system = Factory(:system)
    end
    
    should "be valid" do
      assert @system.valid?
    end
  end
end
