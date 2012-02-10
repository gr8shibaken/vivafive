require 'spec_helper'

describe "tags_client_questions/show.html.haml" do
  before(:each) do
    @tags_client_question = assign(:tags_client_question, stub_model(TagsClientQuestion,
      :tag_id => 1,
      :client_question_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
