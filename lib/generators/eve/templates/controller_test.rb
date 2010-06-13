require 'test_helper'

EveSql.load 'tyr10-<%= eve_table_name %>-mysql5-v1.sql'

class <%= file_name.pluralize.camelize %>ControllerTest < ActionController::TestCase
  setup do
    user_sign_in
    @<%= file_name %> = Factory(:<%= file_name %>)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regions)
  end

  should "get show <%= file_name.gsub(/_/,' ') %>" do
    get :show, :id => @<%= file_name %>.to_param
    assert_response :success
    assert_not_nil assigns(:<%= file_name %>)
  end
end
