require 'rails_helper'

RSpec.describe Venue, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:phone) }
  it { is_expected.to validate_presence_of(:email) }

  it { is_expected.to have_one :address }
  it { is_expected.to accept_nested_attributes_for(:address) }
end
