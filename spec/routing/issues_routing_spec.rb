require "spec_helper"

describe IssuesController do
  describe "routing" do

    def pid; "4e1c69f6ce0d49339000000d";end
    def iid; "4e1c69f6ce0d49339000000e";end

    it "routes to #index" do
      get("/projects/#{pid}/issues").should route_to("issues#index", :project_id => pid)
    end

    it "routes to #new" do
      get("/projects/#{pid}/issues/new").should route_to("issues#new", :project_id => pid)
    end

    it "routes to #show" do
      get("/projects/#{pid}/issues/#{iid}").should route_to("issues#show", :id => iid, :project_id => pid)
    end

    it "routes to #edit" do
      get("/projects/#{pid}/issues/#{iid}/edit").should route_to("issues#edit", :id => iid, :project_id => pid)
    end

    it "routes to #create" do
      post("/projects/#{pid}/issues").should route_to("issues#create", :project_id => pid)
    end

    it "routes to #update" do
      put("/projects/#{pid}/issues/#{iid}").should route_to("issues#update", :id => iid, :project_id => pid)
    end

    it "routes to #destroy" do
      delete("/projects/#{pid}/issues/#{iid}").should route_to("issues#destroy", :id => iid, :project_id => pid)
    end

  end
end
