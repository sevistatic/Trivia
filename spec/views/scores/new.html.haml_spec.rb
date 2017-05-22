require 'rails_helper'

RSpec.describe "scores/new", type: :view do
  before(:each) do
    assign(:score, Score.new(
      :user => "MyString",
      :value => "MyString"
    ))
  end

  it "renders new score form" do
    render

    assert_select "form[action=?][method=?]", scores_path, "post" do

      assert_select "input[name=?]", "score[user]"

      assert_select "input[name=?]", "score[value]"
    end
  end
end
