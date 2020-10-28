class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :default_city, presence: true
    has_many :user_cities
    has_many :items
end
