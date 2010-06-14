require 'test_helper'

class MetaTypeTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      MetaType.delete_all
      @meta_type = Factory(:meta_type)
    end
    
    should "be valid" do
      assert @meta_type.valid?
    end
  end
end
