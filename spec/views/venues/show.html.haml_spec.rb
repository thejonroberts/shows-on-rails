require 'rails_helper'
require 'support/text_format_helpers'

RSpec.describe 'venues/show.html.haml', type: :view do
  include TextFormatHelpers

  let(:venue) { create(:venue) }

  before(:each) do
    @venue = assign(:venue, venue)
  end

  it 'renders attributes' do
    render

    expect(rendered).to match(html_regex venue.name)
    expect(rendered).to match(html_regex venue.site_url)
    expect(rendered).to match(html_regex venue.email)
    expect(rendered).to match(html_regex venue.phone)
  end
end
