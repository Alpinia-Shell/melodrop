class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, length: { minimum: 2 , maximum: 20 }
  validates :introduction , length:{ maximum: 50 }
  has_one_attached :profile_image
  has_many :posts, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_posts, through: :favorites, source: :post
  has_many :active_relationships,class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :followings, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  def follow(user)
    active_relationships.create(followed_id: user.id)
  end

  def unfollow(user)
    active_relationships.find_by(followed_id: user.id).destroy
  end

  def following?(user)
    followings.include?(user)
  end

  GUEST_USER_EMAIL = "guest@example.com"

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image_square.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'no_image_square.jpg', content_type: 'image/jpg')
    end  
    profile_image.variant(resize_to_limit: [width, height]).processed
  end

  def self.guest_sign_in
    find_or_create_by!(email: GUEST_USER_EMAIL) do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guestuser"
    end
  end

  def guest?
    email == 'guest@example.com'
  end
end
