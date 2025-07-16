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
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :notifications, dependent: :destroy

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

  def self.guest_sign_in
    find_or_create_by!(email: GUEST_USER_EMAIL) do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guestuser"
    end
  end

  def guest?
    email == 'guest@example.com'
  end

  def get_profile_image(width, height)
    if profile_image.attached?
      begin
        profile_image.variant(resize_to_fill: [width, height]).processed
      rescue => e
        Rails.logger.error("Image processing failed: #{e.message}")
        default_image_variant(width, height)
      end
    else
      default_image_variant(width, height)
    end
  end
  
  private
  
  def default_image_variant(width, height)
    file_path = Rails.root.join('public/images/no_image_square.jpg')
    return unless File.exist?(file_path)
  
    file = File.open(file_path)
    blob = ActiveStorage::Blob.create_and_upload!(
      io: file,
      filename: 'no_image_square.jpg',
      content_type: 'image/jpeg'
    )
    file.close
  
    blob.variant(resize_to_fill: [width, height]).processed
  end  
end
