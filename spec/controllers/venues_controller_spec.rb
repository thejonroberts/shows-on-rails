# frozen_string_literal: true

require 'rails_helper'

RSpec.describe VenuesController, type: :controller do
  let(:valid_attributes) { build(:venue).attributes }
  let(:invalid_attributes) do
    valid_attributes['email'] = nil
    valid_attributes
  end
  let(:user) { build_stubbed(:user) }

  # before do
  #   sign_in(user)
  # end

  describe 'GET #index' do
    let!(:venues) { create_list(:venue, 5) }

    it 'returns a success response' do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    let(:venue) { create(:venue) }

    it 'returns a success response' do
      # venue = Venue.create! valid_attributes
      get :show, params: { id: venue.to_param }
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    let!(:venue) { create(:venue) }

    it 'returns a success response' do
      get :edit, params: { id: venue.to_param }
      expect(response).to be_successful
    end

    xit 'it fails if not owned by current_user'
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Venue' do
        expect do
          post :create, params: { venue: valid_attributes }
        end.to change(Venue, :count).by(1)
      end

      it 'redirects to the created venue' do
        post :create, params: { venue: valid_attributes }
        expect(response).to redirect_to(Venue.last)
      end
    end

    context 'with invalid params' do
      it 're-renders the new template' do
        post :create, params: { venue: invalid_attributes }
        expect(response).to redirect_to(new_venue_path)
      end
    end
  end

  describe 'PUT #update' do
    xit 'it fails if not owned by current_user'

    context 'with valid params' do
      let(:new_attributes) { attributes_for(:venue) }

      it 'updates the requested venue' do
        venue = Venue.create! valid_attributes
        put :update, params: { id: venue.to_param, venue: new_attributes }
        expect(venue.reload).to have_attributes(new_attributes)
      end

      it 'redirects to the venue' do
        venue = Venue.create! valid_attributes
        put :update, params: { id: venue.to_param, venue: valid_attributes }
        expect(response).to redirect_to(venue)
      end
    end

    context 'with invalid params' do
      let(:venue) { create(:venue) }

      it 're-renders the edit template' do
        put :update, params: { id: venue.to_param, venue: invalid_attributes }
        expect(response).to redirect_to(edit_venue_path(venue))
      end
    end
  end

  describe 'DELETE #destroy' do
    xit 'it fails if not owned by current_user'

    it 'destroys the requested venue' do
      venue = Venue.create! valid_attributes
      expect do
        delete :destroy, params: { id: venue.to_param }
      end.to change(Venue, :count).by(-1)
    end

    it 'redirects to the venues list' do
      venue = Venue.create! valid_attributes
      delete :destroy, params: { id: venue.to_param }
      expect(response).to redirect_to(venues_url)
    end
  end
end
