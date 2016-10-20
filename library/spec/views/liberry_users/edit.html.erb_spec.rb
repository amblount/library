require 'rails_helper'

RSpec.describe "liberry_users/edit", type: :view do
  before(:each) do
    @liberry_user = assign(:liberry_user, LiberryUser.create!(
      :liberry => nil,
      :user => nil
    ))
  end

  it "renders the edit liberry_user form" do
    render

    assert_select "form[action=?][method=?]", liberry_user_path(@liberry_user), "post" do

      assert_select "input#liberry_user_liberry_id[name=?]", "liberry_user[liberry_id]"

      assert_select "input#liberry_user_user_id[name=?]", "liberry_user[user_id]"
    end
  end
end
