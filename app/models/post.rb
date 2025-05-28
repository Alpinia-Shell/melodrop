class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :title,  length: { minimum: 2 , maximum: 20 }
  validates :body, length: { maximum: 200 }
end
