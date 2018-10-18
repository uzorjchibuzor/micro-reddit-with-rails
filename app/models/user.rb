class User < ApplicationRecord
    has_many :posts
    validates :name, length: {maximum: 20},
                     presence: true,
                     uniqueness: true  
end
