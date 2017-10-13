class FacesController < ApplicationController
    respond_to :html, :json, :xml
    skip_before_action :verify_authenticity_token
    def index
         @faces = Face.all
         
         respond_with @faces
    end
    
    def new
         @face = Face.new
    end
    
    def create
        @face = Face.create(face_params)
        #binding.pry
    end
    
  
    
    def face_params
        params.require( :face ).permit( :image )
    end
end
