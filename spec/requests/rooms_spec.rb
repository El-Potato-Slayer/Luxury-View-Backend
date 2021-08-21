require 'rails_helper'

RSpec.describe "Rooms", type: :request do
  let!(:property) { create(:property) }
  let!(:rooms) { create_list(:room, 10, property: property) }
  let(:room_id) { rooms.first.id }
  describe "GET /rooms" do
    before { get '/api/v1/rooms' }
    it 'returns rooms' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /rooms/:id" do
    before { get "/api/v1/rooms/#{room_id}" }
    context 'when room exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
      it 'returns the room item' do
        expect(json['id']).to eq(room_id)
      end
    end
    context 'when room does not exist' do
      let(:room_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns not found message' do
        expect(response.body).to include("Couldn't find Room with 'id'=0")
      end
    end
  end

  describe 'POST /rooms/:id' do
    let(:valid_attributes) do
      {
        name: 'Bedrooms',
        amount: 2,
        property_id: property.id
      }
    end
    context 'when request attributes are valid' do
      before { post '/api/v1/rooms', params: valid_attributes }
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
    context 'when an invalid request' do
      before { post '/api/v1/rooms', params: {} }
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
      it 'returns a failure message' do
        expect(response.body).to include("can't be blank")
      end
    end
  end

  describe 'PUT /rooms/:id' do
    let(:valid_attributes) { { name: 'Minecraft' } }
    before { put "/api/v1/rooms/#{room_id}", params: valid_attributes }
    context 'when the room exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
      it 'updates the room' do
        updated_item = Room.find(room_id)
        expect(updated_item.name).to match(/Minecraft/)
      end
    end
    context 'when the room does not exist' do
      let(:room_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Room with 'id'=0")
      end
    end
  end

  describe 'DELETE /rooms/:id' do
    before { delete "/api/v1/rooms/#{room_id}" }
    context 'when the room exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
    context 'when the room does not exists' do
      let(:room_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Room with 'id'=0")
      end
    end
  end
end
