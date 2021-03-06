require 'rails_helper'

RSpec.describe Api::V1::TypesController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      type = Type.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      type = Type.create! valid_attributes
      get :show, params: {id: type.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Type" do
        expect {
          post :create, params: {type: valid_attributes}, session: valid_session
        }.to change(Type, :count).by(1)
      end

      it "renders a JSON response with the new type" do

        post :create, params: {type: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(type_url(Type.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new type" do

        post :create, params: {type: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested type" do
        type = Type.create! valid_attributes
        put :update, params: {id: type.to_param, type: new_attributes}, session: valid_session
        type.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the type" do
        type = Type.create! valid_attributes

        put :update, params: {id: type.to_param, type: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the type" do
        type = Type.create! valid_attributes

        put :update, params: {id: type.to_param, type: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested type" do
      type = Type.create! valid_attributes
      expect {
        delete :destroy, params: {id: type.to_param}, session: valid_session
      }.to change(Type, :count).by(-1)
    end
  end

end
