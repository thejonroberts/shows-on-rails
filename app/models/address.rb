# Postal Address and Geographic information
class Address < ApplicationRecord
  validates :city, presence: true
  validates :country, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true

  belongs_to :addressable, polymorphic: true

  def city_state_country_format
    "#{city}, #{state} #{country_code}"
  end
end
