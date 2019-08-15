# Base class for the Venue Model
class Venue < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: /@/ # TODO: better regex here.
  validates :phone, presence: true, uniqueness: true

  # TODO: required: true on address? problems creating valid_attributes in factory.
  # That is, associations like address are not in hash.
  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address
end
