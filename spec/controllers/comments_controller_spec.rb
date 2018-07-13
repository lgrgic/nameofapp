require 'rails_helper'

describe CommentsController, type: :controller do

  context 'writes a comment' do
    let(:user) { User.create!(email: "luka@gmail.com", password: "numberZero")}
    let(:product) { Product.create!(name: 'terrarium', price: 5.0)}

    before do
      sign_in user
    end

    it 'submitts a comment on the product page' do
      post :create, params: { product_id: product.id, comment: { body: "cool", rating: 5 } }
      expect(response).to have_http_status(302)
    end
  end

end
