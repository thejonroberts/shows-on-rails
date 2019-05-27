# Base class for the Venue Model
class Venue < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  # validates :address, presence: true

  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address
end
