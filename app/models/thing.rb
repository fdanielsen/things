class Thing < ActiveRecord::Base
  validates :title, :image_url, presence: true

  def likes_count=(count)
    super count.to_i
  end
end
