require 'spec_helper'

describe "issues/edit.html.haml" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issues_path(@issue), :method => "post" do
      assert_select "input#issue_title", :name => "issue[title]"
      assert_select "textarea#issue_description", :name => "issue[description]"
    end
  end
end
