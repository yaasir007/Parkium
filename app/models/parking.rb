class Parking < ApplicationRecord
    has_many :slots, dependent: :destroy
    has_many :bookings, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_one_attached :photo

end
