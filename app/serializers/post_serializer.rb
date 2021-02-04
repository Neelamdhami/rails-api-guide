class PostSerializer < ActiveModel::Serializer
	has_many :facts
  attributes :id, :username, :password
end
