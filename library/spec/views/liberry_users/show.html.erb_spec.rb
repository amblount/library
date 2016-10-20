require 'rails_helper'

RSpec.describe "liberry_users/show", type: :view do
  before(:each) do
    @liberry_user = assign(:liberry_user, LiberryUser.create!(
      :liberry => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
