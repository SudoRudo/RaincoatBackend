class ItemTagSerializer < ActiveModel::Serializer
  attributes :id, :item, :tag
  has_one :item
  has_one :tag
end
