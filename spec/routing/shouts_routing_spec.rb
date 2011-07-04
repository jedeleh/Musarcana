require "spec_helper"

describe ShoutsController do
  describe "routing" do

    it "routes to #index" do
      get("/shouts").should route_to("shouts#index")
    end

    it "routes to #new" do
      get("/shouts/new").should route_to("shouts#new")
    end

    it "routes to #show" do
      get("/shouts/1").should route_to("shouts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shouts/1/edit").should route_to("shouts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shouts").should route_to("shouts#create")
    end

    it "routes to #update" do
      put("/shouts/1").should route_to("shouts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shouts/1").should route_to("shouts#destroy", :id => "1")
    end

  end
end
