require "spec_helper"

describe ClientQuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/client_questions").should route_to("client_questions#index")
    end

    it "routes to #new" do
      get("/client_questions/new").should route_to("client_questions#new")
    end

    it "routes to #show" do
      get("/client_questions/1").should route_to("client_questions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/client_questions/1/edit").should route_to("client_questions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/client_questions").should route_to("client_questions#create")
    end

    it "routes to #update" do
      put("/client_questions/1").should route_to("client_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/client_questions/1").should route_to("client_questions#destroy", :id => "1")
    end

  end
end
