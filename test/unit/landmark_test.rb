require 'test_helper'

class LandmarkTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Landmark.delete_all
      @landmark = Factory(:landmark)
    end
    
    should "be valid" do
      assert @landmark.valid?
    end
  end
end
