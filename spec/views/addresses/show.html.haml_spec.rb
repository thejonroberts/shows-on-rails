require 'rails_helper'
require 'support/text_format_helpers'

RSpec.xdescribe 'addresses/show.html.haml', type: :view do
  include TextFormatHelpers

  let(:address) { create(:address) }

  before(:each) do
    @address = address
  end

  it 'renders attributes in <p>' do
    render

    expect(rendered).to match(html_regex address.line_one)
    expect(rendered).to match(html_regex address.line_two)
    expect(rendered).to match(html_regex address.city)
    expect(rendered).to match(html_regex address.state)
    expect(rendered).to match(html_regex address.country)
    expect(rendered).to match(html_regex address.country_code)
    expect(rendered).to match(html_regex address.zip_code)
  end
end
