require 'rails_helper'

RSpec.describe 'venues/index', type: :view do
  let!(:venues) { create_list(:venue, 5) }

  before(:each) do
    assign(:venues, venues)
  end

  it 'renders a list of venues' do
    render

    venues.each do |venue|
      expect(rendered).to match(venue.name.to_s)
      expect(rendered).to match(venue.name.to_s)
      expect(rendered).to match(venue.name.to_s)
    end
  end
end
