class Api::V1::SignUpsController < Api::V1::ApplicationController
	def create
		user = User.new(user_params)
		if 	user.save!
			serializer = Api::V1::SignUpSerializer.new(user)
			render json: serializer.as_json
		else
			render json: { message: 'error' }
		end
	end

	private

	def user_params
		params.require(:user).permit(
			:name,
			:area,
			:organization,
			:password,
			:password_confirmation
			)
	end
end
