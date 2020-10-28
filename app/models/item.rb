class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :image, {
    presence: true
  }

  has_many :item_tags
  has_many :tags, through: :item_tags
  has_many :item_outfits
end
