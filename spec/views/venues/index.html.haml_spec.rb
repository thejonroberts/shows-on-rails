# frozen_string_literal: true

require 'rails_helper'
require 'support/text_format_helpers'

RSpec.describe 'venues/index.html.haml', type: :view do
  include TextFormatHelpers

  let!(:venues) { create_list(:venue, 5) }

  before(:each) do
    assign(:venues, venues)
  end

  it 'renders a list of venues' do
    render

    venues.each do |venue|
      expect(rendered).to match(/#{CGI.escapeHTML venue.name}/)
      expect(rendered).to match(/#{CGI.escapeHTML venue.address.city_state_country_format}/)
      expect(rendered).to match(/#{CGI.escapeHTML venue.site_url}/)
      expect(rendered).to match(/#{venue_path(venue.id)}/)
    end
  end
end
