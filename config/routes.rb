Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			resource :sign_up, only: [:create]
			resource :sign_in, only: [:create, :destroy]
			resource :me, only: [:show, :update]
		end
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
