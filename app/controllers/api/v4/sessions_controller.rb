class API::V4::SessionsController  < API::APIController

    def create
    	user = User.find_by_api_key! session_params[:api_key]
        

        session_attrs = {
        	#user: user,
        	expires_at: 1.month.from_now,
        	access_token: SecureRandom.urlsafe_base64(24,false)
        }
        user.create_session(session_attrs)
        #session = Session.create!(session_attrs)


        
    end

    def session_params
        #params.require( :session ).permit( :api_key )
        params.permit( :api_key )


    end
end