require 'rails_helper'

RSpec.describe 'venues/show', type: :view do
  let(:venue) { create(:venue) }

  before(:each) do
    @venue = assign(:venue, venue)
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/#{venue.name}/)
    expect(rendered).to match(/#{venue.site_url}/)
    expect(rendered).to match(/#{venue.phone}/)
    expect(rendered).to match(/#{venue.email}/)
  end
end
