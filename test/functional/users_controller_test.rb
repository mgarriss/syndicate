require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = Factory(:user)
  end
  
  context "user signed in" do
    setup do
      sign_in :user, @user
    end

    should "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:users)
    end

    should "should get new" do
      get :new
      assert_response :success
    end

    should "should create user" do
      assert_difference('User.count') do
        post :create, :user => {:email => "somedude@example.com", :password => "password"}
      end

      assert_redirected_to user_path(assigns(:user))
    end

    should "should show user" do
      get :show, :id => @user.to_param
      assert_response :success
    end

    should "should get edit" do
      get :edit, :id => @user.to_param
      assert_response :success
    end

    should "should update user" do
      put :update, :id => @user.to_param, :user => @user.attributes
      assert_redirected_to user_path(assigns(:user))
    end

    should "should destroy user" do
      assert_difference('User.count', -1) do
        delete :destroy, :id => @user.to_param
      end

      assert_redirected_to users_path
    end
  end
  
  context "no logged in user" do
    teardown do
      assert_redirected_to new_user_session_path
    end
    
    should "should not get index" do
      get :index
      assert_nil assigns(:users)
    end

    should "should not get new" do
      get :new
    end

    should "should not create user" do
      assert_no_difference('User.count') do
        post :create, :user => {:email => "somedude@example.com", :password => "password"}
      end
    end

    should "should not show user" do
      get :show, :id => @user.to_param
    end

    should "should not get edit" do
      get :edit, :id => @user.to_param
    end

    should "should not update user" do
      put :update, :id => @user.to_param, :user => @user.attributes
    end

    should "should not destroy user" do
      assert_no_difference('User.count') do
        delete :destroy, :id => @user.to_param
      end
    end
  end
end
