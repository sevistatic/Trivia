require 'rails_helper'

RSpec.describe "trivia/new", type: :view do
  before(:each) do
    assign(:trivium, Trivium.new(
      :question => "Am I a question?",
      :answer => "Yes."
    ))
  end

  it "renders new trivium form" do
    render

    assert_select "form[action=?][method=?]", trivia_path, "post" do

      assert_select "input[name=?]", "trivium[question]"

      assert_select "input[name=?]", "trivium[answer]"
    end
  end
end
