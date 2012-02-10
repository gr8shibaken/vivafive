require 'spec_helper'

describe "client_questions/show.html.haml" do
  before(:each) do
    @client_question = assign(:client_question, stub_model(ClientQuestion,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
