require 'rails_helper'

RSpec.describe 'venues/show', type: :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
                              name: 'Name',
                              site_url: 'Site Url',
                              phone: 'Phone',
                              email: 'Email'
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Site Url/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
  end
end
