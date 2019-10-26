class Howmany < ApplicationRecord
  has_many :posts,dependent: :destroy
end
