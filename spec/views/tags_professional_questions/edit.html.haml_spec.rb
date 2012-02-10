require 'spec_helper'

describe "tags_professional_questions/edit.html.haml" do
  before(:each) do
    @tags_professional_question = assign(:tags_professional_question, stub_model(TagsProfessionalQuestion,
      :tag_id => 1,
      :professional_question_id => 1
    ))
  end

  it "renders the edit tags_professional_question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tags_professional_questions_path(@tags_professional_question), :method => "post" do
      assert_select "input#tags_professional_question_tag_id", :name => "tags_professional_question[tag_id]"
      assert_select "input#tags_professional_question_professional_question_id", :name => "tags_professional_question[professional_question_id]"
    end
  end
end
