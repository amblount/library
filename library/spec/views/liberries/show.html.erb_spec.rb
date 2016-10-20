require 'rails_helper'

RSpec.describe "liberries/show", type: :view do
  before(:each) do
    @liberry = assign(:liberry, Liberry.create!(
      :name => "Name",
      :floor_count => 2,
      :florr_area => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
