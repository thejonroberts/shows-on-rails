require 'rails_helper'

RSpec.describe 'venues/index', type: :view do
  let!(:users) { create_list(:user_with_address, 5) }

  before(:each) do
    assign(:addresses, users.collect(&:addresses).flatten)
  end

  it 'renders a list of venues' do
    # puts 'ADDRESSES', users.collect(&:addresses).flatten.inspect
    render
    # save_and_open
    users.each do |user|
      user.addresses.each do |address|
        assert_select 'tr>td', text: address.city
      end
    end
  end
end
