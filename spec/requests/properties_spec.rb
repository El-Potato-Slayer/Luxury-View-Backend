require 'rails_helper'

RSpec.describe "Properties", type: :request do
  let!(:properties) { create_list(:property, 10) }
  let(:property_id) { properties.first.id }
  describe "GET /properties" do
    before { get '/api/v1/properties' }
    it 'returns properties' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /properties/:id" do
    before { get "/api/v1/properties/#{property_id}" }
    context 'when property exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
      it 'returns the property item' do
        expect(json['id']).to eq(property_id)
      end
    end
    context 'when property does not exist' do
      let(:property_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns not found message' do
        expect(response.body).to include("Couldn't find Property with 'id'=0")
      end
    end
  end

  describe 'POST /properties/:id' do
    let!(:history) { create(:agent) }
    let(:valid_attributes) do
      {
        name: 'Caelesti',
        description: "This is a house", price: 500,
        address: '25 Fuffels Ave', floor_area: 500,
        land_area: 100, agent_id: history.id
      }
    end
    context 'when request attributes are valid' do
      before { post '/api/v1/properties', params: valid_attributes }
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
    context 'when an invalid request' do
      before { post '/api/v1/properties', params: {} }
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
      it 'returns a failure message' do
        expect(response.body).to include("can't be blank")
      end
    end
  end

  describe 'PUT /properties/:id' do
    let(:valid_attributes) { { name: 'Minecraft' } }
    before { put "/api/v1/properties/#{property_id}", params: valid_attributes }
    context 'when the property exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
      it 'updates the property' do
        updated_item = Property.find(property_id)
        expect(updated_item.name).to match(/Minecraft/)
      end
    end
    context 'when the property does not exist' do
      let(:property_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Property with 'id'=0")
      end
    end
  end

  describe 'DELETE /properties/:id' do
    before { delete "/api/v1/properties/#{property_id}" }
    context 'when the property exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
    context 'when the property does not exists' do
      let(:property_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Property with 'id'=0")
      end
    end
  end
end
