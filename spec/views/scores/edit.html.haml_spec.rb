require 'rails_helper'

RSpec.describe "scores/edit", type: :view do
  before(:each) do
    @score = assign(:score, Score.create!(
      :user => "MyString",
      :value => "MyString"
    ))
  end

  it "renders the edit score form" do
    render

    assert_select "form[action=?][method=?]", score_path(@score), "post" do

      assert_select "input[name=?]", "score[user]"

      assert_select "input[name=?]", "score[value]"
    end
  end
end
