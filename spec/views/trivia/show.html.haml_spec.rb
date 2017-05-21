require 'rails_helper'

RSpec.describe "trivia/show", type: :view do
  before(:each) do
    @trivium = assign(:trivium, Trivium.create!(
      :question => "Question",
      :answer => "Answer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Question/)
    expect(rendered).to match(/Answer/)
  end
end
