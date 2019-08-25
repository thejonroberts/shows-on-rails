# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    line_one { Faker::Address.street_address }
    line_two { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country_code { Faker::Address.country_code }
    country { Faker::Address.country_by_code(code: country_code) }
    zip_code { Faker::Address.postcode }

    factory :user_address do
      addressable { |a| a.association(:user) }
    end

    factory :venue_address do
      addressable { |a| a.association(:venue) }
    end
  end
end
