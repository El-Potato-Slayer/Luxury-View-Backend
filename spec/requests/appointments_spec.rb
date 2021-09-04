require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  let(:user) {
    FactoryBot.create(:user, username: 'Tollie the Tottie', email: 'tollie@malotie', password: 'password',
                             first_name: 'Tollie', last_name: 'Tottie')
  }
  let!(:appointments) { create_list(:appointment, 10, user: user) }
  let(:appointment_id) { appointments.first.id }
  describe 'GET /appointments' do
    before { get '/api/v1/appointments', headers: { 'Authorization' => AuthenticationTokenService.call(user.id) } }
    it 'returns appointments' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /appointments/:id' do
    before {
      get "/api/v1/appointments/#{appointment_id}",
          headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
    }
    context 'when appointment exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
      it 'returns the appointment item' do
        expect(json['id']).to eq(appointment_id)
      end
    end
    context 'when appointment does not exist' do
      let(:appointment_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns not found message' do
        expect(response.body).to include("Couldn't find Appointment with 'id'=0")
      end
    end
  end

  describe 'POST /appointments/:id' do
    let!(:temp_property) { create(:property) }
    let(:valid_attributes) do
      {
        user_id: user.id,
        property_id: temp_property.id,
        date: DateTime.now
      }
    end
    context 'when request attributes are valid' do
      before {
        post '/api/v1/appointments', params: valid_attributes,
                                     headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
      }
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
    context 'when an invalid request' do
      before {
        post '/api/v1/appointments', params: {},
                                     headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
      }
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
      it 'returns a failure message' do
        expect(response.body).to include("can't be blank")
      end
    end
  end

  describe 'PUT /appointments/:id' do
    let(:new_date) { DateTime.now.utc }
    let(:valid_attributes) { { date: new_date } }
    before {
      put "/api/v1/appointments/#{appointment_id}",
          params: valid_attributes,
          headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
    }
    context 'when the appointment exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
      it 'updates the appointment' do
        updated_item = Appointment.find(appointment_id)
        expect(updated_item.date.utc.to_s).to match(new_date.utc.to_s)
      end
    end
    context 'when the appointment does not exist' do
      let(:appointment_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Appointment with 'id'=0")
      end
    end
  end

  describe 'DELETE /appointments/:id' do
    before {
      delete "/api/v1/appointments/#{appointment_id}",
             headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
    }
    context 'when the appointment exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
    context 'when the appointment does not exists' do
      let(:appointment_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Appointment with 'id'=0")
      end
    end
  end
end
