# The model for the application user
class User < ApplicationRecord
  # Devise modules. Others available are: :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :validatable, :trackable, :timeoutable

  validates_presence_of :email
  validates_presence_of :display_name
  validates_uniqueness_of :email

  has_many :addresses, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :addresses

  def superuser?
    # TODO: implement a superuser
    false
  end

  def address
    # TODO: add default address_id to user table.
    addresses.first
  end

  def build_address
    addresses << Address.new
  end

  def name
    "#{first_name} #{last_name}"
  end

  def human_location
    "#{address.city} #{address.state}, #{address.country_code}" if address.present?
  end
end
