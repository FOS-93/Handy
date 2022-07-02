class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :handyman
  has_many :reviews, dependent: :destroy
  validates :date, presence: true
  validates :description, presence: true
  validates :skill, presence: true

end
