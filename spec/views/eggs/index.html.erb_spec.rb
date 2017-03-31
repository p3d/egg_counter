require 'rails_helper'

RSpec.describe "eggs/index", type: :view do
  before(:each) do
    assign(:eggs, [
      Egg.create!(
        :user => nil,
        :uses => 2
      ),
      Egg.create!(
        :user => nil,
        :uses => 2
      )
    ])
  end

  it "renders a list of eggs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
