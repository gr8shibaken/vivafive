require "spec_helper"

describe ProfessionalQuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/professional_questions").should route_to("professional_questions#index")
    end

    it "routes to #new" do
      get("/professional_questions/new").should route_to("professional_questions#new")
    end

    it "routes to #show" do
      get("/professional_questions/1").should route_to("professional_questions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/professional_questions/1/edit").should route_to("professional_questions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/professional_questions").should route_to("professional_questions#create")
    end

    it "routes to #update" do
      put("/professional_questions/1").should route_to("professional_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/professional_questions/1").should route_to("professional_questions#destroy", :id => "1")
    end

  end
end
