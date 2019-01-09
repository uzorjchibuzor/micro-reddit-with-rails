class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, length: {maximum: 140},
                      presence: true

  validates :user_id, presence: true

  validates :post_id, presence: true
end
