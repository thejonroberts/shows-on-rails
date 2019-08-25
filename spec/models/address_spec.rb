# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Address, type: :model do
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:country) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:zip_code) }

  it { is_expected.to belong_to :addressable }

  describe '#city_state_country_format' do
    let(:user) { create(:user, :with_address) }
    let(:address) { user.address }

    subject do
      address.city_state_country_format
    end

    it 'returns a formatted address' do
      expect(subject).to eq("#{address.city}, #{address.state} #{address.country_code}")
    end
  end
end
