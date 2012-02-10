require "spec_helper"

describe TagsProfessionalQuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/tags_professional_questions").should route_to("tags_professional_questions#index")
    end

    it "routes to #new" do
      get("/tags_professional_questions/new").should route_to("tags_professional_questions#new")
    end

    it "routes to #show" do
      get("/tags_professional_questions/1").should route_to("tags_professional_questions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tags_professional_questions/1/edit").should route_to("tags_professional_questions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tags_professional_questions").should route_to("tags_professional_questions#create")
    end

    it "routes to #update" do
      put("/tags_professional_questions/1").should route_to("tags_professional_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tags_professional_questions/1").should route_to("tags_professional_questions#destroy", :id => "1")
    end

  end
end
