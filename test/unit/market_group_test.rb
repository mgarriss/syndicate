require 'test_helper'

class MarketGroupTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      MarketGroup.delete_all
      @market_group = Factory(:market_group)
    end
    
    should "be valid" do
      assert @market_group.valid?
    end
  end
end
