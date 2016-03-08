require 'spec_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /' do
    it 'displays the home page' do
      get root_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /contact' do
    user = FactoryGirl.create(:user)
    context 'when user is logged in ' do
      it 'displays the contact page ' do
        login_as user, scope: :user
        get contact_path
        expect(response).to have_http_status(200)
      end
    end
    context 'when user is not logged in it should redirect to login' do
      it 'returns an error ' do
        get contact_path
        expect(response).to have_http_status(302)
        assert_redirected_to '/users/sign_in'
      end
    end
  end
end
