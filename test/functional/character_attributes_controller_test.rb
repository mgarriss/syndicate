require 'test_helper'

class CharacterAttributesControllerTest < ActionController::TestCase
  setup do
    CharacterAttribute.delete_all
    user_sign_in
    @character_attribute = Factory(:character_attribute)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_attributes)
  end

  should "get show character attribute" do
    get :show, :id => @character_attribute.to_param
    assert_response :success
    assert_not_nil assigns(:character_attribute)
  end
end
