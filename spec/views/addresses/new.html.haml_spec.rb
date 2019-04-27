require 'rails_helper'

RSpec.describe 'addresses/new', type: :view do
  before(:each) do
    assign(:address, Address.new(
                       addressable: nil,
                       line_one: 'MyString',
                       line_two: 'MyString',
                       city: 'MyString',
                       state: 'MyString',
                       country: 'MyString',
                       country_code: 'MyString',
                       zip_code: 'MyString'
                     ))
  end

  it 'renders new address form' do
    render

    assert_select 'form[action=?][method=?]', addresses_path, 'post' do
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
