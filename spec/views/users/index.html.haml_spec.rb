# frozen_string_literal: true

require 'rails_helper'
require 'support/text_format_helpers'

RSpec.describe 'users/index.html.haml', type: :view do
  include TextFormatHelpers

  let(:users) { build_list(:user, 2) }

  before(:each) do
    assign(:users, users)
  end

  it 'renders a list of users' do
    render
    users.each do |user|
      assert_select 'tr>td', text: user.display_name.to_s
      assert_select 'tr>td', text: user.name.to_s
    end
  end
end
