class FactSerializer < ActiveModel::Serializer
	belongs_to :post
  attributes :id, :fact, :likes
end
