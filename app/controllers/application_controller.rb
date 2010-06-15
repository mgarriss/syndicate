class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  before_filter :authenticate_user!
  before_filter :set_order
  
  protected

  def set_order
    session[:sort] ||= {}
    session[:sort][params[:sub]] = (params[:sort] ? ActiveRecord::Base.connection.quote_string(params[:sort]) : '')
    @sort = session[:sort]
  end

end
