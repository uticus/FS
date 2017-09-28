class Admin::UsersController < ApplicationController
	respond_to :html, :json, :xml
    def index
         @users = User.all
         
         respond_with @users
    end

    def new
         @user = User.new
#         @user.registered = DateTime.current
    end
    
    def create
        @user = User.create(user_params)
        #binding.pry
    end
    
    
    protected
    
    def user_params
        params.require( :user ).permit( :email, :name, :description, :manager )
    end    	
end
