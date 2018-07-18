require 'rails_helper'

describe Comment do
  context "when the product has reviews" do
  @user = FactoryBot.build(:user)
    it "is equal or less than 5" do
      @comment = FactoryBot.create(:comment)
      expect(@comment.rating).to be <= 5
    end
  end
end
