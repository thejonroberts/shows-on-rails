# frozen_string_literal: true

require 'rails_helper'

RSpec.xdescribe 'addresses/edit.html.haml', type: :view do
  let(:user) { create(:user, :with_address) }
  let(:address) { user.addresses.first }
  before(:each) do
    @address = assign(:address, address)
  end

  it 'renders the edit address form' do
    render

    assert_select('form[action=?][method=?]', address_path(address), 'post') do
      assert_select 'input[name=?]', 'address[line_one]'
      assert_select 'input[name=?]', 'address[line_two]'
      assert_select 'input[name=?]', 'address[city]'
      assert_select 'input[name=?]', 'address[state]'
      assert_select 'input[name=?]', 'address[country]'
      assert_select 'input[name=?]', 'address[country_code]'
      assert_select 'input[name=?]', 'address[zip_code]'
    end
  end
end
