require 'spec_helper'

describe "tag_q_relations/new.html.haml" do
  before(:each) do
    assign(:tag_q_relation, stub_model(TagQRelation,
      :tag_id => 1,
      :question_id => 1
    ).as_new_record)
  end

  it "renders new tag_q_relation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tag_q_relations_path, :method => "post" do
      assert_select "input#tag_q_relation_tag_id", :name => "tag_q_relation[tag_id]"
      assert_select "input#tag_q_relation_question_id", :name => "tag_q_relation[question_id]"
    end
  end
end
