require 'rails_helper'

RSpec.describe 'addresses/show', type: :view do
  before(:each) do
    @address = assign(
      :address, Address.create!(
        # addressable: nil,
        line_one:     'Line One',
        line_two:     'Line Two',
        city:         'City',
        state:        'State',
        country:      'Country',
        country_code: 'Country Code',
        zip_code:     'Zip Code'
      )
    )
  end

  xit 'renders attributes in <p>' do
    render
    # expect(rendered).to match(//)
    expect(rendered).to match(/Line One/)
    expect(rendered).to match(/Line Two/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Country Code/)
    expect(rendered).to match(/Zip Code/)
  end
end
