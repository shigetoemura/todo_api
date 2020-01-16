class Api::V1::MesController < Api::V1::ApplicationController
	before_action :authorize!

	def show
		serializer = Api::V1::MeSerializer.new(current_user)
		render json: serializer.as_json
	end

	def update
		@user = current_user
		if params[:user_params][:name].present?
			@user.name = params[:user_params][:name]
		end
		if params[:user_params][:intro].present?
			@user.intro = params[:user_params][:intro]
		end
		if params[:user_params][:area].present?
			@user.area = params[:user_params][:area]
		end
		if params[:user_params][:organization].present?
			@user.organization = params[:user_params][:organization]
		end
		if params[:user_params][:gender].present?
			@user.gender = params[:user_params][:gender]
		end
		if params[:user_params][:birthday].present?
			@user.birthday = params[:user_params][:birthday]
		end
		if params[:user_params][:todo].present?
			@user.todo = params[:user_params][:todo]
		end

		if @user.save
			serializer = Api::V1::MeSerializer.new(@user)
			render json: serializer.as_json
		else
			raise ActiveRecord::RecordNotSaved
		end
	end

	private

  	def user_params
    	params.require(:user_params).permit(
    		:name,
    		:intro,
    		:area,
    		:organization,
    		:gender,
    		:birthday,
    		:todo)
  	end
end
