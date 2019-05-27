FactoryBot.define do
  factory :venue do
    name { Faker::Restaurant.name }
    site_url { 'http://www.' + Faker::Internet.domain_name }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.safe_email }

    after(:create) do |venue, _evaluator|
      create(:address, addressable: venue)
    end
  end
end
