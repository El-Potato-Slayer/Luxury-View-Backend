require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'POST /register' do
    it 'authenticates the user' do
      post '/api/v1/register', params: {
        user: {
          username: 'user1', email: 'test@test.com',
          password: 'password', first_name: 'Yujiro',
          last_name: 'Hanma'
        }
      }
      expect(response).to have_http_status(:created)
      expect(json).to eq({
                           'id' => User.last.id,
                           'username' => 'user1',
                           'email' => 'test@test.com',
                           'first_name' => 'Yujiro',
                           'last_name' => 'Hanma',
                           'is_admin' => false,
                           'token' => AuthenticationTokenService.call(User.last.id)
                         })
    end
  end
end
