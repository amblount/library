require "rails_helper"

RSpec.describe LiberryUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/liberry_users").to route_to("liberry_users#index")
    end

    it "routes to #new" do
      expect(:get => "/liberry_users/new").to route_to("liberry_users#new")
    end

    it "routes to #show" do
      expect(:get => "/liberry_users/1").to route_to("liberry_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/liberry_users/1/edit").to route_to("liberry_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/liberry_users").to route_to("liberry_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/liberry_users/1").to route_to("liberry_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/liberry_users/1").to route_to("liberry_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/liberry_users/1").to route_to("liberry_users#destroy", :id => "1")
    end

  end
end
