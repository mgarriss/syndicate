require 'test_helper'

class EveNameTest < ActiveSupport::TestCase
  context "creation" do
    setup do
      EveName.delete_all
      @eve_name = Factory(:eve_name)
    end
    
    should "be valid" do
      assert @eve_name.valid?
    end
  end
end
