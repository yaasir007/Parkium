class Parking < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :users, through: :bookings
    has_one_attached :photo

end
