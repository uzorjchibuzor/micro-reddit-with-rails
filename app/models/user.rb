class User < ApplicationRecord
    validates :name, length: {maximum: 20},
                     presence: true

    validates :email, length: {maximum: 40},
                     presence: true,
                     uniqueness: {case_sensitivity: false}
end
