require 'spec_helper'

describe "tags_professional_questions/index.html.haml" do
  before(:each) do
    assign(:tags_professional_questions, [
      stub_model(TagsProfessionalQuestion,
        :tag_id => 1,
        :professional_question_id => 1
      ),
      stub_model(TagsProfessionalQuestion,
        :tag_id => 1,
        :professional_question_id => 1
      )
    ])
  end

  it "renders a list of tags_professional_questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
