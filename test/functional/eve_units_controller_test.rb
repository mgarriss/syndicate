require 'test_helper'

class EveUnitsControllerTest < ActionController::TestCase
  setup do
    EveUnits.delete_all
    user_sign_in
    @eve_units = Factory(:eve_units)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eve_units)
  end

  should "get show eve units" do
    get :show, :id => @eve_units.to_param
    assert_response :success
    assert_not_nil assigns(:eve_units)
  end
end
