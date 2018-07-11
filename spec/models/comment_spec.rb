require 'rails_helper'

describe Comment do
  context "when the product has comments" do
    let(:comment) { Comment.new(rating: 5.0)}

  it "is an integer" do
    expect(comment.rating). to be <= 5
  end

  end
end
