class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :title,  length: { minimum: 2 , maximum: 50 }
  validates :body, length: { minimum: 1, maximum: 2200 }
end
