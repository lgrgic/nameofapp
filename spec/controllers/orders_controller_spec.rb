require 'rails_helper'

describe OrdersController, type: :controller do
  let(:user) { User.create!(email: "luka@gmail.com", password: "numberZero")}

  describe 'GET #index' do
    context 'when a user is logged in' do

      before do
        sign_in user
      end

      it 'loads correct user details' do
        get :index
        expect(response).to be_ok
      end

    end
    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

end
