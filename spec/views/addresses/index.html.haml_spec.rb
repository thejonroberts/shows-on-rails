require 'rails_helper'
require 'support/text_format_helpers'

RSpec.xdescribe 'addresses/index.html.haml', type: :view do
  include TextFormatHelpers

  let(:user) { create(:user_with_address, address_count: 5) }
  let(:addresses) { user.addresses }

  before(:each) do
    @addresses = assign(:addresses, addresses)
  end

  it 'renders a list of addresses' do
    render
    addresses.each do |address|
      assert_select 'tr>td', text: address.line_one.to_s, count: 1
      assert_select 'tr>td', text: address.line_two.to_s
      assert_select 'tr>td', text: address.city.to_s
      assert_select 'tr>td', text: address.state.to_s
      assert_select 'tr>td', text: address.country.to_s
    end
  end
end
