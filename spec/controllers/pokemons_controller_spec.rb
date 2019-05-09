require 'rails_helper'

RSpec.describe Api::V1::PokemonsController, type: :controller do

  let(:valid_attributes) {
    {id: 1, name: "bulbasaur"}
  }

  let(:invalid_attributes) {
    {name: "charmander"}
  }

  describe "GET #index" do
    it "returns a success response" do
      pokemon = Pokemon.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      pokemon = Pokemon.create! valid_attributes
      get :show, params: {id: pokemon.to_param}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Pokemon" do
        expect {
          post :create, params: {pokemon: valid_attributes}
        }.to change(Pokemon, :count).by(1)
      end

      it "renders a JSON response with the new pokemon" do
        post :create, params: {pokemon: valid_attributes}
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/vnd.api+json')
        parse_json = JSON(response.body)
        expect(parse_json['data']['attributes']['name']).to eq(valid_attributes[:name])
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new pokemon" do
        expect(invalid_attributes).to have_attributes(:name => "bulbasaur")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested pokemon" do
        pokemon = Pokemon.create! valid_attributes
        put :update, params: {id: pokemon.to_param, pokemon: new_attributes}
        pokemon.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the pokemon" do
        pokemon = Pokemon.create! valid_attributes

        put :update, params: {id: pokemon.to_param, pokemon: valid_attributes}
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/vnd.api+json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the pokemon" do
        pokemon = Pokemon.create! valid_attributes

        put :update, params: {id: pokemon.to_param, pokemon: valid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/vnd.api+json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested pokemon" do
      pokemon = Pokemon.create! valid_attributes
      expect {
        delete :destroy, params: {id: pokemon.to_param}
      }.to change(Pokemon, :count).by(-1)
    end
  end

end
