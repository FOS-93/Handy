class Handyman < ApplicationRecord
  belongs_to :user
  has_many :skills, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :location ],
  associated_against: {
    skills: %i[name description]
  },
  using: {
    tsearch: { prefix: true }
  }
end
