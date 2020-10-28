class Outfit < ApplicationRecord
    has_many :item_outfits
    has_many :items, through: :item_outfits
    belongs_to :user
end
