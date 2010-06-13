require 'test_helper'

class ConstellationTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Constellation.delete_all
      @constellation = Factory(:constellation)
    end
    
    should "be valid" do
      assert @constellation.valid?
    end
  end
end
