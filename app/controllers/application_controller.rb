class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  
  def basic
    authenticate_or_request_with_http_basic do |name,password|
      name == "delay" && password == 'hogehoge'
    end
  end
end
