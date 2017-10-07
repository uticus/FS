class API::V4::FacesController < API::APIController
    before_action :authenticate

    def index
    	@faces = Face.all

    	respond_with @faces
    end


    def create
        @face = Face.create(face_params)
    end
    
    
    
    def face_params
        params.require( :face ).permit( :image )
    end

end