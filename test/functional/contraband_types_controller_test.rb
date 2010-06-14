require 'test_helper'

class ContrabandTypesControllerTest < ActionController::TestCase
  setup do
    ContrabandType.delete_all
    user_sign_in
    @contraband_type = Factory(:contraband_type)
  end
  
  # should "get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:contraband_types)
  # end

  # should "get show contraband type" do
  #   get :show, :faction_id => @contraband_type.factionID, :type_id => @contraband_type.typeID
  #   assert_response :success
  #   assert_not_nil assigns(:contraband_type)
  # end
end
