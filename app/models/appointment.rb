class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :handyman
  has_many :reviews
end
