require 'spec_helper'

describe "professional_questions/show.html.haml" do
  before(:each) do
    @professional_question = assign(:professional_question, stub_model(ProfessionalQuestion,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
