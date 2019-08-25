# frozen_string_literal: true

FactoryBot.define do
  factory :venue do
    name { Faker::Restaurant.name }
    site_url { 'http://www.' + Faker::Internet.domain_name }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.safe_email }

    before(:create) do |venue, _evaluator|
      venue.address = create(:address, addressable: venue)
    end
  end
end
