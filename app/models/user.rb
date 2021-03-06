class User < ApplicationRecord
  #Timeline Start
 #アソシエーション(1:多)
 has_many :comments,dependent: :destroy
 has_many :likes,dependent: :destroy
 has_many :posts,dependent: :destroy



 has_many :liked_posts, through: :likes, source: :post,dependent: :destroy
 has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
 has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
 has_many :following, through: :active_relationships, source: :followed,dependent: :destroy
 has_many :followers, through: :passive_relationships, source: :follower,dependent: :destroy
 #Timeline End

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true #追記
  validates :profile, length: { maximum: 200 } #追記

  mount_uploader :pic, ImgUploader

    def already_liked?(post)
    self.likes.exists?(post_id: post.id)
    end

    def follow(other_user)
     following << other_user
    end

    def unfollow(other_user)
     active_relationships.find_by(followed_id: other_user.id).destroy
    end

    def following?(other_user)
     following.include?(other_user)
    end

  def to_name
    self.email.split('@')[0]
  end
end
