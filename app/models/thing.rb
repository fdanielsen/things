class Thing < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :title, :image_url, presence: true
end
