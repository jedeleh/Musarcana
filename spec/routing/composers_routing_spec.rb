require "spec_helper"

describe ComposersController do
  describe "routing" do

    it "routes to #index" do
      get("/composers").should route_to("composers#index")
    end

    it "routes to #new" do
      get("/composers/new").should route_to("composers#new")
    end

    it "routes to #show" do
      get("/composers/1").should route_to("composers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/composers/1/edit").should route_to("composers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/composers").should route_to("composers#create")
    end

    it "routes to #update" do
      put("/composers/1").should route_to("composers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/composers/1").should route_to("composers#destroy", :id => "1")
    end

  end
end
