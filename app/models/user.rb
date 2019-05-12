# The model for the application user
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :validatable, :trackable, :timeoutable

  has_one :address, as: :addressable, dependent: :destroy
  accepts_nested_attributes_for :address

  def superuser?
    # TODO: implement a superuser
    false
  end
end
