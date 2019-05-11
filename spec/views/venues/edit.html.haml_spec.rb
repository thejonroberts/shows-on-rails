require 'rails_helper'

RSpec.describe 'venues/edit', type: :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
                              name: 'MyString',
                              site_url: 'MyString',
                              phone: 'MyString',
                              email: 'MyString'
                            ))
  end

  it 'renders the edit venue form' do
    render

    assert_select 'form[action=?][method=?]', venue_path(@venue), 'post' do
      assert_select 'input[name=?]', 'venue[name]'

      assert_select 'input[name=?]', 'venue[site_url]'

      assert_select 'input[name=?]', 'venue[phone]'

      assert_select 'input[name=?]', 'venue[email]'
    end
  end
end
