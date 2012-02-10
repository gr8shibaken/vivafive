require 'spec_helper'

describe "client_questions/index.html.haml" do
  before(:each) do
    assign(:client_questions, [
      stub_model(ClientQuestion,
        :title => "Title"
      ),
      stub_model(ClientQuestion,
        :title => "Title"
      )
    ])
  end

  it "renders a list of client_questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
