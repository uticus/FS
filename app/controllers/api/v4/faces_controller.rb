class API::V4::FacesController < API::APIController
    before_action :authenticate

    def index
    	@faces = Face.all

    	respond_with @faces
    end


    def create
        @face = Face.create(face_params)
    end
    
    def analyze
    	faceid = request.headers['faceid']

    	#@face = Face.find(faceid)
    	if face = Face.where(:id => faceid).first

	    	msg = {
	    		:isMale => true, 
	    		:isMaleProbability => 0.65, 
	    		:isChild => true, 
	    		:isChildProbability => 0.95, 
	    		:age_min => 1,
	    		:age_max => 12,
	    		:faceid => face.id, 
	    		#:fname => @face.image_file_name 
	    	}
	    	render :json => msg

        else
        	render plain: 'no faces with faceid ' + faceid
        end

    end


    
    def face_params
        params.require( :face ).permit( :image )
    end

end