require 'rails_helper'

RSpec.describe "Agents", type: :request do
  let!(:agents) { create_list(:agent, 5) }
  let!(:agent_id) { agents.first.id }
  describe "GET /agents" do
    before { get '/api/v1/agents' }
    it 'returns agents' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /agent' do
    let(:valid_name) {
      {
        first_name: 'Jack',
        last_name: 'Jackson',
        email: 'a@a.com',
        number: '0786321456',
        picture: 'wwwwwwwwww'
      }
    }
    context 'when the request is valid' do
      before { post '/api/v1/agents', params: valid_name }
      it 'creates a category' do
        expect(json['first_name']).to eq('Jack')
      end
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
    context 'when the request is invalid' do
      before { post '/api/v1/agents', params: { first_name: '' } }
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
      it 'returns validation failure message' do
        expect(response.body).to include('is too short (minimum is 3 characters)')
      end
    end
  end

  describe 'DELETE /agents/:id' do
    before { delete "/api/v1/agents/#{agent_id}" }
    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
