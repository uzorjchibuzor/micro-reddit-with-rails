class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :name, length: {maximum: 20},
                     presence: true

    validates :email, length: {maximum: 30},
                     presence: true,
                     uniqueness: {case_sensitivity: false}
end
