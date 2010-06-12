class AdminsController < ApplicationController
  before_filter :authenticate_admin!
  
  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    if current_admin.id == params[:id].to_i
      @admin = current_admin
    else
      redirect_to(current_admin)
    end
  end
  
  def update
    if current_admin.id == params[:id].to_i
      @admin = current_admin
      if @admin.update_attributes(params[:admin])
        redirect_to(@admin, :notice => 'Admin was successfully updated.')
      else
        render :action => "edit"
      end
    else
      redirect_to(current_admin, :alert => 'Admin was not successfully updated.')
    end
  end
end
