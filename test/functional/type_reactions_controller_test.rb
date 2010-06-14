require 'test_helper'

class TypeReactionsControllerTest < ActionController::TestCase
  setup do
    TypeReaction.delete_all
    user_sign_in
    @type_reaction = Factory(:type_reaction)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_reactions)
  end

  should "get show type reaction" do
    get :show, :id => @type_reaction.to_param
    assert_response :success
    assert_not_nil assigns(:type_reaction)
  end
end
