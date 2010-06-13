require 'test_helper'

EveSql.load 'tyr10-<%= eve_table_name %>-mysql5-v1.sql'

class <%= file_name.camelize %>Test < ActiveSupport::TestCase
  context "creation" do
    setup do
      @<%= file_name %> = Factory(:<%= file_name %>)
    end
    
    should "be valid" do
      assert @<%= file_name %>.valid?
    end
  end
end
