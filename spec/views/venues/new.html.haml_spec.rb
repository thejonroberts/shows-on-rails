require 'rails_helper'

RSpec.describe 'venues/new', type: :view do
  before(:each) do
    assign(:venue, Venue.new(
                     name: 'MyString',
                     site_url: 'MyString',
                     phone: 'MyString',
                     email: 'MyString'
                   ))
  end

  it 'renders new venue form' do
    render

    assert_select 'form[action=?][method=?]', venues_path, 'post' do
      assert_select 'input[name=?]', 'venue[name]'

      assert_select 'input[name=?]', 'venue[site_url]'

      assert_select 'input[name=?]', 'venue[phone]'

      assert_select 'input[name=?]', 'venue[email]'
    end
  end
end
