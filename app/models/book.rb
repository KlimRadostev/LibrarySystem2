class Book < ApplicationRecord
    has_many :publishes
    has_many :authors, through: :publishes
end
