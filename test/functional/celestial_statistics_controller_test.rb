require 'test_helper'

class CelestialStatisticsControllerTest < ActionController::TestCase
  setup do
    CelestialStatistic.delete_all
    user_sign_in
    @celestial_statistic = Factory(:celestial_statistic)
  end
  
  should "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:celestial_statistics)
  end

  should "get show celestial statistic" do
    get :show, :id => @celestial_statistic.to_param
    assert_response :success
    assert_not_nil assigns(:celestial_statistic)
  end
end
