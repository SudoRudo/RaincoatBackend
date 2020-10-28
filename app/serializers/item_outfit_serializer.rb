class ItemOutfitSerializer < ActiveModel::Serializer
  attributes :id, :outfit, :item
  has_one :outfit
  has_one :item
end
