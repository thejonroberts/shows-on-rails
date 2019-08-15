# The model for the application user
class User < ApplicationRecord
  validates_presence_of :email
  validates_presence_of :display_name

  # Include default devise modules. Others available are:
  # :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :validatable, :trackable, :timeoutable

  has_many :addresses, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :addresses

  def superuser?
    # TODO: implement a superuser
    false
  end

  # TODO: add default address_id to user table.
  def address
    addresses.first
  end

  def name
    "#{first_name} #{last_name}"
  end

  def human_location
    "#{address.city} #{address.state}, #{address.country}" if address.present?
  end
end
