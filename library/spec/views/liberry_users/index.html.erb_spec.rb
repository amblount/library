require 'rails_helper'

RSpec.describe "liberry_users/index", type: :view do
  before(:each) do
    assign(:liberry_users, [
      LiberryUser.create!(
        :liberry => nil,
        :user => nil
      ),
      LiberryUser.create!(
        :liberry => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of liberry_users" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
