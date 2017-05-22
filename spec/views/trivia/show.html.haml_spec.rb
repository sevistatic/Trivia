require 'rails_helper'

RSpec.describe "trivia/show", type: :view do
  before(:each) do
    @trivium = assign(:trivium, Trivium.create!(
      :question => "Am I a question?",
      :answer => "Yes."
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Am I a question?/)
    expect(rendered).to match(/Yes./)
  end
end
