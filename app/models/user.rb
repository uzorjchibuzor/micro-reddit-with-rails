class User < ApplicationRecord
    has_many :posts
    has_many :comments
    validates :name, length: {maximum: 20},
                     presence: true,
                     uniqueness: true  
end
