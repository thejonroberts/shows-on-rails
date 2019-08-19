require 'rails_helper'

# TODO: do we even need an address controller - later features maybe?
# currently only using addresses within user / venue context
RSpec.xdescribe AddressesController, type: :controller do
  # let(:valid_attributes) do
  #   attributes_for(:address)
  # end
  # let(:invalid_attributes) do
  #   { id: nil }
  # end

  # describe 'GET #index' do
  #   it 'returns a success response' do
  #     Address.create! valid_attributes
  #     get :index, params: {}
  #     expect(response).to be_successful
  #   end
  # end

  # describe 'GET #show' do
  #   it 'returns a success response' do
  #     address = Address.create! valid_attributes
  #     get :show, params: { id: address.to_param }
  #     expect(response).to be_successful
  #   end
  # end

  # describe 'GET #new' do
  #   it 'returns a success response' do
  #     get :new, params: {}
  #     expect(response).to be_successful
  #   end
  # end

  # describe 'GET #edit' do
  #   it 'returns a success response' do
  #     address = Address.create! valid_attributes
  #     get :edit, params: { id: address.to_param }
  #     expect(response).to be_successful
  #   end
  # end

  # describe 'POST #create' do
  #   context 'with valid params' do
  #     it 'creates a new Address' do
  #       expect do
  #         post :create, params: { address: valid_attributes }
  #       end.to change(Address, :count).by(1)
  #     end

  #     it 'redirects to the created address' do
  #       post :create, params: { address: valid_attributes }
  #       expect(response).to redirect_to(Address.last)
  #     end
  #   end

  #   context 'with invalid params' do
  #     it "returns a success response (i.e. to display the 'new' template)" do
  #       post :create, params: { address: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe 'PUT #update' do
  #   context 'with valid params' do
  #     let(:new_attributes) do
  #       skip('Add a hash of attributes valid for your model')
  #     end

  #     it 'updates the requested address' do
  #       address = Address.create! valid_attributes
  #       put :update, params: { id: address.to_param, address: new_attributes }
  #       address.reload
  #       skip('Add assertions for updated state')
  #     end

  #     it 'redirects to the address' do
  #       address = Address.create! valid_attributes
  #       put :update, params: { id: address.to_param, address: valid_attributes }
  #       expect(response).to redirect_to(address)
  #     end
  #   end

  #   context 'with invalid params' do
  #     it "returns a success response (i.e. to display the 'edit' template)" do
  #       address = Address.create! valid_attributes
  #       put :update, params: { id: address.to_param, address: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe 'DELETE #destroy' do
  #   it 'destroys the requested address' do
  #     address = Address.create! valid_attributes
  #     expect do
  #       delete :destroy, params: { id: address.to_param }
  #     end.to change(Address, :count).by(-1)
  #   end

  #   it 'redirects to the addresses list' do
  #     address = Address.create! valid_attributes
  #     delete :destroy, params: { id: address.to_param }
  #     expect(response).to redirect_to(addresses_url)
  #   end
  # end
end
