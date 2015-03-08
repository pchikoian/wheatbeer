class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  around_filter :catch_exceptions

  def catch_exceptions
    begin
      yield
    rescue => e
      Rails.logger.error e
      redirect_to root_path, alert: e.message
    end
  end
end
