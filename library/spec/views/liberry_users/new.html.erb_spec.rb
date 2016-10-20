require 'rails_helper'

RSpec.describe "liberry_users/new", type: :view do
  before(:each) do
    assign(:liberry_user, LiberryUser.new(
      :liberry => nil,
      :user => nil
    ))
  end

  it "renders new liberry_user form" do
    render

    assert_select "form[action=?][method=?]", liberry_users_path, "post" do

      assert_select "input#liberry_user_liberry_id[name=?]", "liberry_user[liberry_id]"

      assert_select "input#liberry_user_user_id[name=?]", "liberry_user[user_id]"
    end
  end
end
