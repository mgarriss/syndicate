require 'test_helper'

class CelestialStatisticTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      CelestialStatistic.delete_all
      @celestial_statistic = Factory(:celestial_statistic)
    end
    
    should "be valid" do
      assert @celestial_statistic.valid?
    end
  end
end
