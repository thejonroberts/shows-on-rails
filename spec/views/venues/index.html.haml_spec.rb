require 'rails_helper'

RSpec.describe 'venues/index.html.haml', type: :view do
  let!(:venues) { create_list(:venue, 5) }

  before(:each) do
    assign(:venues, venues)
  end

  it 'renders a list of venues' do
    render

    venues.each do |venue|
      expect(rendered).to match(/#{venue.name}/)
      expect(rendered).to match(/#{venue.address.city_state_country_format}/)
      expect(rendered).to match(/#{venue.site_url}/)
      expect(rendered).to match(/#{venue_path(venue.id)}/)
    end
  end
end
