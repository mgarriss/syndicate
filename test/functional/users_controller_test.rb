require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  context "user signed in" do
    setup do
      @user = Factory(:user)
      sign_in :user, @user
    end

    should "get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:users)
    end

    should "not get new" do
      get :new
      assert_response :redirect
    end

    should "not create user" do
      assert_no_difference('User.count') do
        post :create, :user => {:email => "somedude@example.com", :password => "password"}
      end
      assert_response :redirect
    end

    should "show user as other see him" do
      get :show, :id => @user.to_param
      assert_response :success
    end

    should "get edit only on self" do
      get :edit, :id => @user.to_param
      assert_response :success
    end

    should "update user only on self" do
      put :update, :id => @user.to_param, :user => @user.attributes
      assert_redirected_to user_path(assigns(:user))
    end

    should "not destroy user" do
      assert_no_difference('User.count') do
        delete :destroy, :id => @user.to_param
      end
      assert_response :redirect
    end
    
    context "on another user" do
      setup do
        @other = Factory(:user)
      end
      
      should "show user" do
        get :show, :id => @other.to_param
        assert_response :success
      end

      should "get edit on self" do
        get :edit, :id => @other.to_param
        assert_response :success
        assert_not_nil assigns(:user)
        assert_not_equal assigns(:user), @other
        assert_equal assigns(:user), @user
      end

      should "put update user on self" do
        put :update, :id => @other.to_param, :user => @other.attributes
        assert_response :redirect
      end
    end
  end
  
  context "not logged in user" do
    setup do
      @user = Factory(:user)
    end
    
    teardown do
      assert_redirected_to new_user_session_path
    end
    
    should "not get index" do
      get :index
      assert_nil assigns(:users)
    end

    should "not get new" do
      get :new
    end

    should "not create user" do
      assert_no_difference('User.count') do
        post :create, :user => {:email => "somedude@example.com", :password => "password"}
      end
    end

    should "not show user" do
      get :show, :id => @user.to_param
    end

    should "not get edit" do
      get :edit, :id => @user.to_param
    end

    should "not update user" do
      put :update, :id => @user.to_param, :user => @user.attributes
    end

    should "not destroy user" do
      assert_no_difference('User.count') do
        delete :destroy, :id => @user.to_param
      end
    end
  end
  
  context "admin signed in" do
    setup do
      @admin = Factory(:admin)
      @user = Factory(:user)
      sign_in :admin, @admin
      sign_in :user, @admin
    end

    should "get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:users)
    end

    should "get new" do
      get :new
      assert_response :success
      assert_not_nil assigns(:user)
    end

    should "create user" do
      assert_difference('User.count', 1) do
        post :create, :user => {:email => "somedude@example.com", :password => "password"}
      end
      assert_response :redirect
    end

    should "show user as other see him" do
      get :show, :id => @user.to_param
      assert_response :success
    end

    should "get edit" do
      get :edit, :id => @user.to_param
      assert_response :success
    end

    should "update user" do
      put :update, :id => @user.to_param, :user => @user.attributes
      assert_redirected_to user_path(assigns(:user))
    end

    should "destroy user" do
      assert_difference('User.count', -1) do
        delete :destroy, :id => @user.to_param
      end
      assert_response :redirect
    end
  end
end
