class Handyman < ApplicationRecord
  belongs_to :user
  has_many :skills, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
