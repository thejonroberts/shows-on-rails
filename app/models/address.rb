# Postal Address and Geographic information
class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  def city_state_country_format
    "#{city}, #{state} #{country_code}"
  end
end
