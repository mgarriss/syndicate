require 'test_helper'

class InventoryCategoryTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      InventoryCategory.delete_all
      @inventory_category = Factory(:inventory_category)
    end
    
    should "be valid" do
      assert @inventory_category.valid?
    end
  end
end
