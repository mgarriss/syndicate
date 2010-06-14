require 'test_helper'

class EveUnitsTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      EveUnits.delete_all
      @eve_units = Factory(:eve_units)
    end
    
    should "be valid" do
      assert @eve_units.valid?
    end
  end
end
