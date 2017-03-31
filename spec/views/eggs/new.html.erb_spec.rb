require 'rails_helper'

RSpec.describe "eggs/new", type: :view do
  before(:each) do
    assign(:egg, Egg.new(
      :user => nil,
      :uses => 1
    ))
  end

  it "renders new egg form" do
    render

    assert_select "form[action=?][method=?]", eggs_path, "post" do

      assert_select "input#egg_user_id[name=?]", "egg[user_id]"

      assert_select "input#egg_uses[name=?]", "egg[uses]"
    end
  end
end
