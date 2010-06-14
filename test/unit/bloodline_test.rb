require 'test_helper'

class BloodlineTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Bloodline.delete_all
      @bloodline = Factory(:bloodline)
    end
    
    should "be valid" do
      assert @bloodline.valid?
    end
  end
end
