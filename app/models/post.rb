class Post < ApplicationRecord
  belongs_to :user
  validates :title, length: {maximum: 21},
                    presence:true
end
