class ThingSerializer < ActiveModel::Serializer
  embed :ids
  has_many :tags

  attributes :id, :title, :image_url, :description, :likes_count
end
