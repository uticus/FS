class API::APIController < ActionController::API

	include ActionController::HttpAuthentication::Token::ControllerMethods
    respond_to :html, :json, :xml
    protected

	def authenticate
		unless current_session.present?
			render plain: 'error message'
		end
	end

    def current_session
    	@current_session ||= authenticate_with_http_token do |access_token, options|
    		Session.find_by(access_token: access_token)
    	end
    end


    def current_user
    	@current_user ||= current_session&.user
    end


end
