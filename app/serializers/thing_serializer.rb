class ThingSerializer < ActiveModel::Serializer
  embed :ids, include: true
  has_many :tags
''
  attributes :id, :title, :image_url, :description, :likes_count
end
