require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:valid_attributes) { build(:user).attributes }
  let(:invalid_attributes) do
    valid_attributes['email'] = nil
    valid_attributes
  end

  # before { sign_in(user) }

  describe 'GET #index' do
    let!(:users) { create_list(:user, 5) }

    it 'returns a success response' do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    let(:user) { create(:user) }

    it 'returns a success response' do
      get :show, params: { id: user.to_param }
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    let!(:user) { create(:user, :with_address) }

    xit 'fails if not current user' do
      get :edit, params: { id: user.to_param }
      expect(response).to be_not_allowed
    end

    context 'user is current_user' do
      it 'returns a success response' do
        get :edit, params: { id: user.to_param }
        expect(response).to be_successful
      end
    end

    context 'user with no address' do
      let!(:user) { create(:user) }

      it 'returns a success response' do
        get :edit, params: { id: user.to_param }
        expect(response).to be_successful
      end
    end
  end
end
