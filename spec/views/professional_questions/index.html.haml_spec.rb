require 'spec_helper'

describe "professional_questions/index.html.haml" do
  before(:each) do
    assign(:professional_questions, [
      stub_model(ProfessionalQuestion,
        :title => "Title"
      ),
      stub_model(ProfessionalQuestion,
        :title => "Title"
      )
    ])
  end

  it "renders a list of professional_questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
