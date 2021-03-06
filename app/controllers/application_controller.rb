class ApplicationController < ActionController::Base
  before_action :configure_permited_parameters, if: :devise_controller?
  before_action :basic_auth

  private

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birthday_year, :gender_id])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
