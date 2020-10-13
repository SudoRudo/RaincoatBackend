class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :users
end
