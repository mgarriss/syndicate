require 'test_helper'

class GraphicsControllerTest < ActionController::TestCase
  setup do
    Graphic.delete_all
    user_sign_in
    @graphic = Factory(:graphic)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graphics)
  end

  should "get show graphic" do
    get :show, :id => @graphic.to_param
    assert_response :success
    assert_not_nil assigns(:graphic)
  end
end
