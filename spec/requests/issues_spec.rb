require 'spec_helper'

describe "Issues" do
  describe "/projects/:id/issues" do

    before(:each) do
      @project = Factory(:project)
      4.times{ @project.issues << Factory.build(:issue) }
    end

    it "should list all the issues in a project" do
      visit project_issues_path(@project)

      page.should have_content(@project.title)
      @project.issues.each do |issue|
        page.should have_content(issue.title)
      end
      save_and_open_page
    end
  end
end
