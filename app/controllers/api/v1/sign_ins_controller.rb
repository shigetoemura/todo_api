class Api::V1::SignInsController < Api::V1::ApplicationController
	before_action :set_user, only: [:create]

	def create
	 	@user.authenticate(sign_in_params[:password])
	 	serializer = Api::V1::MeSerializer.new(@user)
	 	render json: serializer.as_json
	end

	private

	def set_user
      @user = User.find_by!(name: sign_in_params[:name])
    end


    def sign_in_params
      params.require(:sign_in).permit(:name, :password)
    end
end
