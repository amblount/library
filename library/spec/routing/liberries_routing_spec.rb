require "rails_helper"

RSpec.describe LiberriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/liberries").to route_to("liberries#index")
    end

    it "routes to #new" do
      expect(:get => "/liberries/new").to route_to("liberries#new")
    end

    it "routes to #show" do
      expect(:get => "/liberries/1").to route_to("liberries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/liberries/1/edit").to route_to("liberries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/liberries").to route_to("liberries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/liberries/1").to route_to("liberries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/liberries/1").to route_to("liberries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/liberries/1").to route_to("liberries#destroy", :id => "1")
    end

  end
end
