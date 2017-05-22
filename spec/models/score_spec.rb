require 'rails_helper'

RSpec.describe Score, type: :model do
  describe "user field" do
    context "it is missing" do
      it "should not be valid" do
        expect(Score.new().valid?).to eq false
      end
    end
    context "it is empty" do
      it "should not be valid" do
        expect(Score.new(:user => "").valid?).to eq false
      end
    end
  end
end
