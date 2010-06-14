require 'test_helper'

class StationTypeTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      StationType.delete_all
      @station_type = Factory(:station_type)
    end
    
    should "be valid" do
      assert @station_type.valid?
    end
  end
end
