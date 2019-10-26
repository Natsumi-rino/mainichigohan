class Post < ApplicationRecord
  #Timeline Start
  #アソシエーション(1:多)
  has_many :comments,dependent: :destroy
  belongs_to :howmany
  has_many :likes,dependent: :destroy
  belongs_to :user
  belongs_to :whattime


  
  has_many :liked_users, through: :likes, source: :user,dependent: :destroy

  #Timeline End
  mount_uploader :img,ImgUploader
end
