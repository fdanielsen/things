class TagSerializer < ActiveModel::Serializer
  embed :ids
  has_many :things

  attributes :id, :name
end
