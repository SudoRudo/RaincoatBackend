class ItemSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :name, :image, :category, :tags, :user_id
  has_one :user

  def image
    if object.image.attached?
      {
        url: Rails.application.routes.url_helpers.rails_blob_path(object.image, host: "http://localhost:3000")
      }
    end
  end

  # url: Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path: true)
  # url: Rails.application.routes.url_helpers.rails_blob_path(object.image, host: "http://localhost:3000")
  
end
