# The base controller of the application
class ApplicationController < ActionController::Base
  def root_url
    '/home#index'
  end
end
