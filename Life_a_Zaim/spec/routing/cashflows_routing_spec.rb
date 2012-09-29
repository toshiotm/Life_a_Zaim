require "spec_helper"

describe CashflowsController do
  describe "routing" do

    it "routes to #index" do
      get("/cashflows").should route_to("cashflows#index")
    end

    it "routes to #new" do
      get("/cashflows/new").should route_to("cashflows#new")
    end

    it "routes to #show" do
      get("/cashflows/1").should route_to("cashflows#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cashflows/1/edit").should route_to("cashflows#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cashflows").should route_to("cashflows#create")
    end

    it "routes to #update" do
      put("/cashflows/1").should route_to("cashflows#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cashflows/1").should route_to("cashflows#destroy", :id => "1")
    end

  end
end
