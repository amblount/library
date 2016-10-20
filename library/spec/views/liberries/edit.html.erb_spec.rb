require 'rails_helper'

RSpec.describe "liberries/edit", type: :view do
  before(:each) do
    @liberry = assign(:liberry, Liberry.create!(
      :name => "MyString",
      :floor_count => 1,
      :florr_area => 1
    ))
  end

  it "renders the edit liberry form" do
    render

    assert_select "form[action=?][method=?]", liberry_path(@liberry), "post" do

      assert_select "input#liberry_name[name=?]", "liberry[name]"

      assert_select "input#liberry_floor_count[name=?]", "liberry[floor_count]"

      assert_select "input#liberry_florr_area[name=?]", "liberry[florr_area]"
    end
  end
end
