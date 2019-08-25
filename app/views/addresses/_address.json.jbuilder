# frozen_string_literal: true

json.extract!(
  address, :id, :addressable_id, :line_one, :line_two, :city,
  :state, :country, :country_code, :zip_code, :created_at,
  :updated_at
)
json.url address_url(address, format: :json)
