require 'test_helper'

class AdminsControllerTest < ActionController::TestCase
  context "admin signed in" do
    setup do
      @admin = Factory(:admin)
      sign_in :admin, @admin
      sign_in :user, @admin
    end

    should "get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:admins)
    end

    should "not get new" do
      assert_raises ActionController::RoutingError do
        get :new
      end
    end

    should "not create admin" do
      assert_raises ActionController::RoutingError do
        post :create, :admin => {:email => "somedude@example.com", :password => "password"}
      end
    end

    should "show admin" do
      get :show, :id => @admin.to_param
      assert_response :success
    end

    should "get edit" do
      get :edit, :id => @admin.to_param
      assert_response :success
    end

    should "update admin" do
      put :update, :id => @admin.to_param, :admin => @admin.attributes
      assert_redirected_to admin_path(assigns(:admin))
    end
    
    should "not destroy admin" do
      assert_raises ActionController::RoutingError do
        delete :destroy, :id => @admin.to_param
      end
    end

    context "looking at another admin" do
      setup do
        @other = Factory(:admin)
      end
      
      should "not destroy admin" do
        assert_raises ActionController::RoutingError do
          delete :destroy, :id => @other.to_param
        end
      end
      
      should "show that admin" do
        get :show, :id => @other.to_param
        assert_response :success
      end

      should "not get edit" do
        get :edit, :id => @other.to_param
        assert_response :redirect
      end

      should "not update that admin" do
        put :update, :id => @other.to_param, :admin => @other.attributes
        assert_response :redirect
      end
    end
  end
end
