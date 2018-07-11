require 'rails_helper'

describe Order do
  context "when the user has many orders" do
    let(:order) { Order.new(user_id: "" )}

  it "is not valid without a user ID" do
    expect(order.user_id).to be_nil
  end

  end
end
