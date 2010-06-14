require 'test_helper'

class UniverseTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      Universe.delete_all
      @universe = Factory(:universe)
    end
    
    should "be valid" do
      assert @universe.valid?
    end
  end
end
