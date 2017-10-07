class User < ApplicationRecord
	before_create :generate_api_key
	has_one :session

	protected

	def generate_api_key
		self.api_key = loop do 
			random_token = SecureRandom.urlsafe_base64(24,false)
			break random_token unless self.class.exists?(api_key: random_token)
			
		end
	end

	
end
