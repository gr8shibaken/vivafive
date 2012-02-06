require 'spec_helper'

describe "tag_q_relations/show.html.haml" do
  before(:each) do
    @tag_q_relation = assign(:tag_q_relation, stub_model(TagQRelation,
      :tag_id => 1,
      :question_id => 1
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
