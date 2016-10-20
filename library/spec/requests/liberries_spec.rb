require 'rails_helper'

RSpec.describe "Liberries", type: :request do
  describe "GET /liberries" do
    it "works! (now write some real specs)" do
      get liberries_path
      expect(response).to have_http_status(200)
    end
  end
end
