# frozen_string_literal: true

# The base controller of the application
class ApplicationController < ActionController::Base
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def root_url
    '/home#index'
  end

  protected

  def configure_devise_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:first_name, :last_name, :display_name,
             address_attributes: %i[country country_code state city line_one line_two zip_code]]
    )
  end
end
