require 'test_helper'

class InventoryTypeTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      InventoryType.delete_all
      @inventory_type = Factory(:inventory_type)
    end
    
    should "be valid" do
      assert @inventory_type.valid?
    end
  end
end
