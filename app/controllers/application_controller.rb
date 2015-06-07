class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find_by(id: session[:user_id])
  end

  helper_method :current_user

  class OverCapacity < StandardError; end

  rescue_from OverCapacity, :with => :too_many_requests

  class PrivatePage < StandardError; end

  rescue_from PrivatePage, :with => :not_signed_in

  private

  def too_many_requests
    render file: "public/over_capacity.html", :layout => false, status: 500
  end

  def not_signed_in
    render file: "public/not_signed_in.html", :layout =>false
  end
end
