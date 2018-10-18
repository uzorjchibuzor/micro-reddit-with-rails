class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, length: {maximum: 25},
                     presence: true

  validates :body, length: {maximum: 140},
                     presence: true 
end
