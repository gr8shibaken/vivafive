require 'spec_helper'

describe "jobs/edit.html.haml" do
  before(:each) do
    @job = assign(:job, stub_model(Job))
  end

  it "renders the edit job form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jobs_path(@job), :method => "post" do
    end
  end
end
