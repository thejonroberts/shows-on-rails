require 'rails_helper'

RSpec.describe 'addresses/edit', type: :view do
  # before(:each) do
  let(:user) { create(:user) }
  let(:address) { create(:address, addressable: user) }
  # @address = assign(:address, Address.create!(
  #   # addressable: nil,
  #   line_one: 'MyString',
  #   line_two: 'MyString',
  #   city: 'MyString',
  #   state: 'MyString',
  #   country: 'MyString',
  #   country_code: 'MyString',
  #   zip_code: 'MyString'
  # ))
  # end

  xit 'renders the edit address form' do
    # byebug
    render address

    assert_select 'form[action=?][method=?]', address_path(address), 'post' do
      assert_select 'input[name=?]', 'address[addressable_id]'

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
