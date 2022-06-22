class Handyman < ApplicationRecord
  belongs_to :user
  has_many :skills
  has_many :appointments
end
