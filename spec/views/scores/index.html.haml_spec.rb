require 'rails_helper'

RSpec.describe "scores/index", type: :view do
  before(:each) do
    assign(:scores, [
      Score.create!(
        :user => "User"
      ),
      Score.create!(
        :user => "User"
      )
    ])
  end

  it "renders a list of scores" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
  end
end
