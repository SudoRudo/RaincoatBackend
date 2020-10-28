class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :default_city
end
