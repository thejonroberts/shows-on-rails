require 'rails_helper'

RSpec.describe 'addresses/index', type: :view do
  before(:each) do
    assign(:addresses, [
             Address.create!(
               #  addressable: nil,
               line_one: 'Line One',
               line_two: 'Line Two',
               city: 'City',
               state: 'State',
               country: 'Country',
               country_code: 'Country Code',
               zip_code: 'Zip Code'
             ),
             Address.create!(
               #  addressable: nil,
               line_one: 'Line One',
               line_two: 'Line Two',
               city: 'City',
               state: 'State',
               country: 'Country',
               country_code: 'Country Code',
               zip_code: 'Zip Code'
             )
           ])
  end

  xit 'renders a list of addresses' do
    render
    # assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 'Line One'.to_s, count: 2
    assert_select 'tr>td', text: 'Line Two'.to_s, count: 2
    assert_select 'tr>td', text: 'City'.to_s, count: 2
    assert_select 'tr>td', text: 'State'.to_s, count: 2
    assert_select 'tr>td', text: 'Country'.to_s, count: 2
    assert_select 'tr>td', text: 'Country Code'.to_s, count: 2
    assert_select 'tr>td', text: 'Zip Code'.to_s, count: 2
  end
end
