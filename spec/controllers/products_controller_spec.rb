require 'rails_helper'

describe ProductsController, type: :controller do
  let(:product) {Product.create!(name: 'terrarium', price: 5.0)}

  describe 'GET #index' do
    it 'renders products index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

end
