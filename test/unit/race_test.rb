require 'test_helper'

class RaceTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Race.delete_all
      @race = Factory(:race)
    end
    
    should "be valid" do
      assert @race.valid?
    end
  end
end
