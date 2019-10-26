class Post < ApplicationRecord
  #Timeline Start
  #アソシエーション(1:多)
  belongs_to :user
  belongs_to :whattime
  belongs_to :howmany
  has_many :likes,dependent: :destroy
  has_many :liked_users, through: :likes, source: :user,dependent: :destroy
  has_many :comments,dependent: :destroy
  #Timeline End
  mount_uploader :img,ImgUploader
end
