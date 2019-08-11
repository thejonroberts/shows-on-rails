# Base class for the Venue Model
class Venue < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: /@/ # TODO: better regex here.
  validates :phone, presence: true, uniqueness: true

  has_one :address, as: :addressable, dependent: :destroy # required: true, inverse_of ??? - polymorph problems
  accepts_nested_attributes_for :address
end
