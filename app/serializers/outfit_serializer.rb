class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :name, :condition, :items, :user_id

end
