class Api::V1::MeSerializer < ActiveModel::Serializer
  attributes :id,
  			#:image_url,
  			:name,
  			:intro,
  			:area,
  			:organization,
  			:gender,
  			:birthday,
  			:todo,
  			:token, #消す
  			:created_at,
  			:updated_at

  	def created_at
  		object.created_at.to_i
  	end

  	def updated_at
  		object.updated_at.to_i
  	end
end
