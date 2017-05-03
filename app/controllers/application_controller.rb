class ApplicationController < ActionController::Base
protect_from_forgery with: :exception

before_action :fetch_user
#before any request in our system is handled, try and define @current_user (call fetch_user to do that)

  

    def fetch_user
      @current_user = User.find_by(id: session[:user_id]) if      session[:user_id]
    session[:user_id] = nil unless @current_user.present?

    end
end
