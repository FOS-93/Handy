class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :handyman
  has_many :appointments
  has_many :reviews

  before_save :set_full_name

  private

  def set_full_name
    self.full_name = "#{self.first_name} #{self.last_name}".strip
  end
end
