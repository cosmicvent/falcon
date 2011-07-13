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

  describe "create" do
    it "should be able to create an issue" do

      @project = Factory(:project)
      initial_count = @project.issues.count
      visit new_project_issue_path(@project)

      fill_in "Title", with: "My first issue"
      fill_in "Description", with: "Some awesome issue"
      click_on "Create Issue"

      page.should have_content("Issue was successfully created.")

      @project.reload
      @project.issues.count.should == ( initial_count + 1 )

    end
  end

  describe "create" do
    it "should be able to create an issue" do

      @project = Factory(:project)
      @issue = @project.issues.first
      visit edit_project_issue_path(@project, @issue)

      fill_in "Title", with: "Here is a changed title"
      fill_in "Description", with: "and a changed description"
      click_on "Update Issue"

      page.should have_content("Issue was successfully updated.")

      @issue.reload
      @issue.title.should == "Here is a changed title"
      @issue.description.should ==  "and a changed description"
    end
  end

end
