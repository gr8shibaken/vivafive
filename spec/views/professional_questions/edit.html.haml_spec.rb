require 'spec_helper'

describe "professional_questions/edit.html.haml" do
  before(:each) do
    @professional_question = assign(:professional_question, stub_model(ProfessionalQuestion,
      :title => "MyString"
    ))
  end

  it "renders the edit professional_question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => professional_questions_path(@professional_question), :method => "post" do
      assert_select "input#professional_question_title", :name => "professional_question[title]"
    end
  end
end
