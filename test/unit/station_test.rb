require 'test_helper'

class StationTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Station.delete_all
      @station = Factory(:station)
    end
    
    should "be valid" do
      assert @station.valid?
    end
  end
end
