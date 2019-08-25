# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'venues/edit.html.haml', type: :view do
  let(:venue) { create(:venue) }

  before(:each) do
    @venue = assign(:venue, venue)
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
