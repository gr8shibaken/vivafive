require 'spec_helper'

describe "tag_q_relations/index.html.haml" do
  before(:each) do
    assign(:tag_q_relations, [
      stub_model(TagQRelation,
        :tag_id => 1,
        :question_id => 1
      ),
      stub_model(TagQRelation,
        :tag_id => 1,
        :question_id => 1
      )
    ])
  end

  it "renders a list of tag_q_relations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
