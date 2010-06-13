require 'test_helper'

class <%= file_name.pluralize.camelize %>ControllerTest < ActionController::TestCase
  setup do
    <%= file_name.camelize %>.delete_all
    user_sign_in
    @<%= file_name %> = Factory(:<%= file_name %>)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:<%= file_name.pluralize %>)
  end

  should "get show <%= file_name.gsub(/_/,' ') %>" do
    get :show, :id => @<%= file_name %>.to_param
    assert_response :success
    assert_not_nil assigns(:<%= file_name %>)
  end
end
