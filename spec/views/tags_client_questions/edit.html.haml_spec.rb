require 'spec_helper'

describe "tags_client_questions/edit.html.haml" do
  before(:each) do
    @tags_client_question = assign(:tags_client_question, stub_model(TagsClientQuestion,
      :tag_id => 1,
      :client_question_id => 1
    ))
  end

  it "renders the edit tags_client_question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tags_client_questions_path(@tags_client_question), :method => "post" do
      assert_select "input#tags_client_question_tag_id", :name => "tags_client_question[tag_id]"
      assert_select "input#tags_client_question_client_question_id", :name => "tags_client_question[client_question_id]"
    end
  end
end
