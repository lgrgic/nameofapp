require 'rails_helper'

describe User do
  context "testing validations" do
    let(:user) {User.new(first_name: "Luka")}

    it 'should return first name' do
      expect(user.first_name).to eq "Luka"
    end
  end
end
