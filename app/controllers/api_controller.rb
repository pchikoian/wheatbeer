class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :catch_exceptions
  around_filter :catch_api_exceptions

  private
    def catch_api_exceptions
      begin
        yield
      rescue => e
        Rails.logger.error e
        render json: { code: 500, message: e.message}
      end
    end
end
