class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :title,  length: { minimum: 2 , maximum: 50 }
  validates :body, length: { minimum: 1, maximum: 2200 }
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.exists?(user_id.user.id)
  end
end
