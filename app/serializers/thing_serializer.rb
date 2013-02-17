class ThingSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :description, :likes_count
end
