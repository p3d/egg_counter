require "rails_helper"

RSpec.describe EggsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/eggs").to route_to("eggs#index")
    end

    it "routes to #new" do
      expect(:get => "/eggs/new").to route_to("eggs#new")
    end

    it "routes to #show" do
      expect(:get => "/eggs/1").to route_to("eggs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/eggs/1/edit").to route_to("eggs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/eggs").to route_to("eggs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/eggs/1").to route_to("eggs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/eggs/1").to route_to("eggs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/eggs/1").to route_to("eggs#destroy", :id => "1")
    end

  end
end
