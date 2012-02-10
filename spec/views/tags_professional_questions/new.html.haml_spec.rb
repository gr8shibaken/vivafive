require 'spec_helper'

describe "tags_professional_questions/new.html.haml" do
  before(:each) do
    assign(:tags_professional_question, stub_model(TagsProfessionalQuestion,
      :tag_id => 1,
      :professional_question_id => 1
    ).as_new_record)
  end

  it "renders new tags_professional_question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tags_professional_questions_path, :method => "post" do
      assert_select "input#tags_professional_question_tag_id", :name => "tags_professional_question[tag_id]"
      assert_select "input#tags_professional_question_professional_question_id", :name => "tags_professional_question[professional_question_id]"
    end
  end
end
