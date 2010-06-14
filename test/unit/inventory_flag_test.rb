require 'test_helper'

class InventoryFlagTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      InventoryFlag.delete_all
      @inventory_flag = Factory(:inventory_flag)
    end
    
    should "be valid" do
      assert @inventory_flag.valid?
    end
  end
end
