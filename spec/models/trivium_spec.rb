require 'rails_helper'

RSpec.describe Trivium, type: :model do
  describe "question field" do
    context "it is missing" do
      it "should not be valid" do
        expect(Trivium.new(:answer => "Chuff Chuff Chuff").valid?).to eq false
      end
    end
    context "it is less than three words" do
      it "should not be valid" do
        expect(Trivium.new(:question => "Who this?", :answer => "It's me.").valid?).to eq false
      end
    end
  end
  describe "answer field" do
    context "it is missing" do
      it "should not be valid" do
        expect(Trivium.new(:question => "What does the fox say?").valid?).to eq false
      end
    end
  end
end
