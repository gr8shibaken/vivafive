require "spec_helper"

describe TagsClientQuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/tags_client_questions").should route_to("tags_client_questions#index")
    end

    it "routes to #new" do
      get("/tags_client_questions/new").should route_to("tags_client_questions#new")
    end

    it "routes to #show" do
      get("/tags_client_questions/1").should route_to("tags_client_questions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tags_client_questions/1/edit").should route_to("tags_client_questions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tags_client_questions").should route_to("tags_client_questions#create")
    end

    it "routes to #update" do
      put("/tags_client_questions/1").should route_to("tags_client_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tags_client_questions/1").should route_to("tags_client_questions#destroy", :id => "1")
    end

  end
end
