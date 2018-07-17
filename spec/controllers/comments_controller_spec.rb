require 'rails_helper'

describe OrdersController, type: :controller do
  @user1 = FactoryBot.create(:user)
    before do
      @user1 = FactoryBot.create(:user)
    end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end
end
