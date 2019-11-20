require "rails_helper"

RSpec.describe ChristmaseveningsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/christmasevenings").to route_to("christmasevenings#index")
    end

    it "routes to #new" do
      expect(:get => "/christmasevenings/new").to route_to("christmasevenings#new")
    end

    it "routes to #show" do
      expect(:get => "/christmasevenings/1").to route_to("christmasevenings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/christmasevenings/1/edit").to route_to("christmasevenings#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/christmasevenings").to route_to("christmasevenings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/christmasevenings/1").to route_to("christmasevenings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/christmasevenings/1").to route_to("christmasevenings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/christmasevenings/1").to route_to("christmasevenings#destroy", :id => "1")
    end
  end
end
