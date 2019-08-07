require 'rails_helper'

RSpec.describe 'users/index.html.haml', type: :view do
  let(:users) { build_list(:user_with_address, 2) }

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
