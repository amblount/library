require 'rails_helper'

RSpec.describe "liberries/index", type: :view do
  before(:each) do
    assign(:liberries, [
      Liberry.create!(
        :name => "Name",
        :floor_count => 2,
        :florr_area => 3
      ),
      Liberry.create!(
        :name => "Name",
        :floor_count => 2,
        :florr_area => 3
      )
    ])
  end

  it "renders a list of liberries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
