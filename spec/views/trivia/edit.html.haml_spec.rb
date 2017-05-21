require 'rails_helper'

RSpec.describe "trivia/edit", type: :view do
  before(:each) do
    @trivium = assign(:trivium, Trivium.create!(
      :question => "MyString",
      :answer => "MyString"
    ))
  end

  it "renders the edit trivium form" do
    render

    assert_select "form[action=?][method=?]", trivium_path(@trivium), "post" do

      assert_select "input[name=?]", "trivium[question]"

      assert_select "input[name=?]", "trivium[answer]"
    end
  end
end
