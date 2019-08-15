require 'rails_helper'
require 'support/text_format_helpers'

RSpec.describe 'users/show.html.haml', type: :view do
  include TextFormatHelpers

  let(:user) { create(:user) }

  before(:each) do
    @user = assign(:user, user)
  end

  it 'renders attributes' do
    render

    expect(rendered).to match(html_regex user.display_name)
    expect(rendered).to match(html_regex user.first_name)
    expect(rendered).to match(html_regex user.email)
    expect(rendered).to match(html_regex user.last_name)
  end
end
