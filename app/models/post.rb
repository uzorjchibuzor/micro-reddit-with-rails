class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, length: {maximum: 21},
                    presence:true

  validates :url, length: {maximum: 30},
                    presence:true
end
