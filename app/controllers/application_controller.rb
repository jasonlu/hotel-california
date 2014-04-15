class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def current_user
    puts "session:"
    puts session[:user_id]
    if session[:user_id].nil?
      return nil
    else
      user = Customer.where(:id => session[:user_id]).first
      return user
    end
  end

  def record_not_found
    return nil
  end
end
