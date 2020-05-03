class User < ApplicationRecord
    has_many :rounds
    has_many :quotes, through: :rounds
end
