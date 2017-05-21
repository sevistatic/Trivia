require 'rails_helper'

RSpec.describe "trivia/index", type: :view do
  before(:each) do
    assign(:trivia, [
      Trivium.create!(
        :question => "Am I a question?",
        :answer => "Yes."
      ),
      Trivium.create!(
        :question => "Am I a question?",
        :answer => "Yes."
      )
    ])
  end

  it "renders a list of trivia" do
    render
    assert_select "div.row>div.col-sm-6", :text => "Am I a question?".to_s, :count => 2
    assert_select "div.row>div.col-sm-6", :text => "Yes.".to_s, :count => 2
  end
end
