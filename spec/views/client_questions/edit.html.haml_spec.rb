require 'spec_helper'

describe "client_questions/edit.html.haml" do
  before(:each) do
    @client_question = assign(:client_question, stub_model(ClientQuestion,
      :title => "MyString"
    ))
  end

  it "renders the edit client_question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => client_questions_path(@client_question), :method => "post" do
      assert_select "input#client_question_title", :name => "client_question[title]"
    end
  end
end
