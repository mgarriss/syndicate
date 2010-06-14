require 'test_helper'

class ContrabandTypeTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      ContrabandType.delete_all
      @contraband_type = Factory(:contraband_type)
    end
    
    should "be valid" do
      assert @contraband_type.valid?
    end
  end
end
