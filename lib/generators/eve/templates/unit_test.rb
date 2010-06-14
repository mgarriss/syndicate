require 'test_helper'

class <%= file_name.camelize %>Test < ActiveSupport::TestCase
  context "creation" do
    setup do
      <%= file_name.camelize %>.delete_all
      @<%= file_name %> = Factory(:<%= file_name %>)
    end
    
    should "be valid" do
      assert @<%= file_name %>.valid?
    end
  end
end
