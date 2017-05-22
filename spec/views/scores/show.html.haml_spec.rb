require 'rails_helper'

RSpec.describe "scores/show", type: :view do
  before(:each) do
    @score = assign(:score, Score.create!(
      :user => "User"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
  end
end
