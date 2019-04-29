FactoryBot.define do
  factory :address do
    addressable { nil }
    line_one { 'MyString' }
    line_two { 'MyString' }
    city { 'MyString' }
    state { 'MyString' }
    country { 'MyString' }
    country_code { 'MyString' }
    zip_code { 'MyString' }
  end

  trait :user do
    addressable { |a| a.association(:user) }
  end
end
