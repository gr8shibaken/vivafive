require 'spec_helper'

describe "tags_professional_questions/show.html.haml" do
  before(:each) do
    @tags_professional_question = assign(:tags_professional_question, stub_model(TagsProfessionalQuestion,
      :tag_id => 1,
      :professional_question_id => 1
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
