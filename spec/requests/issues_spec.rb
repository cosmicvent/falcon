require 'spec_helper'

describe "Issues" do
  describe "/projects/:id/issues" do

    before(:each) do
      @project = Factory(:project)
    end

    it "should list all the issues in a project" do
      visit project_issues_path(@project)

      page.should have_content(@project.title)
      @project.issues.each do |issue|
        page.should have_content(issue.title)
      end
    end
  end
end
