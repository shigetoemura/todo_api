class User < ApplicationRecord
	before_validation :assign_token

	has_secure_password validations: true

	has_many :user_images, dependent: :destroy

	def assign_token
		self.token ||= SecureRandom.uuid
	end


    def self.encrypt(token)
      Digest::SHA256.hexdigest(token.to_s)
    end
end
