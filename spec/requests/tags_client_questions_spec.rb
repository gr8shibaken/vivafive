require 'spec_helper'

describe "TagsClientQuestions" do
  describe "GET /tags_client_questions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tags_client_questions_path
      response.status.should be(200)
    end
  end
end
