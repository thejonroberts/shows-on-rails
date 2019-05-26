FactoryBot.define do
  factory :address do
    for_user
    line_one { Faker::Address.street_address }
    line_two { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country_code { Faker::Address.country_code }
    country { Faker::Address.country_by_code(code: country_code) }
    zip_code { Faker::Address.postcode }

    trait :for_user do
      addressable { |a| a.association(:user) }
    end

    trait :for_venue do
      addressable { |a| a.association(:venue) }
    end
  end
end
