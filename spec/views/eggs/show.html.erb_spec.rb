require 'rails_helper'

RSpec.describe "eggs/show", type: :view do
  before(:each) do
    @egg = assign(:egg, Egg.create!(
      :user => nil,
      :uses => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
