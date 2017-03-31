require 'rails_helper'

RSpec.describe "eggs/edit", type: :view do
  before(:each) do
    @egg = assign(:egg, Egg.create!(
      :user => nil,
      :uses => 1
    ))
  end

  it "renders the edit egg form" do
    render

    assert_select "form[action=?][method=?]", egg_path(@egg), "post" do

      assert_select "input#egg_user_id[name=?]", "egg[user_id]"

      assert_select "input#egg_uses[name=?]", "egg[uses]"
    end
  end
end
