require 'rails_helper'

RSpec.describe "trivia/index", type: :view do
  before(:each) do
    assign(:trivia, [
      Trivium.create!(
        :question => "Question",
        :answer => "Answer"
      ),
      Trivium.create!(
        :question => "Question",
        :answer => "Answer"
      )
    ])
  end

  it "renders a list of trivia" do
    render
    assert_select "tr>td", :text => "Question".to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
  end
end
