class UsersController < ApplicationController
  before_filter :authenticate_admin!, :only => [:new, :create, :destroy]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = (admin_signed_in? ? User.find(params[:id]) : current_user)
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(@user, :notice => 'User was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    if admin_signed_in? or current_user.id == params[:id].to_i
      @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
        redirect_to(@user, :notice => 'User was successfully updated.')
      else
        render :action => "edit"
      end
    else
      redirect_to(current_user, :alert => 'User was not successfully updated.')
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to(users_url)
  end
end
