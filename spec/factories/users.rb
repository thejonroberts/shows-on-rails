FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    display_name do
      Faker::Internet.username("#{first_name} #{last_name}", %w[. _ -])
    end
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.safe_email(first_name) }
    password { Faker::Internet.password }
    password_confirmation { password }
    confirmed_at { Date.today }
    # NOTE: other devise fields
    # encrypted_password {   }
    # reset_password_token {   }
    # reset_password_sent_at {   }
    # remember_created_at {   }
    # sign_in_count {   }
    # current_sign_in_at {   }
    # last_sign_in_at {   }
    # current_sign_in_ip {   }
    # last_sign_in_ip {   }
    # confirmation_token {   }
    # confirmed_at {   }
    # confirmation_sent_at {   }
    # unconfirmed_email {   }
    # failed_attempts {   }
    # unlock_token {   }
    # locked_at {   }

    factory :user_with_address do
      transient do
        address_count { 1 }
      end

      after(:create) do |user, evaluator|
        create_list(:address, evaluator.address_count, addressable: user)
      end
    end
  end
end
