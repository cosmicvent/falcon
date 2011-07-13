class IssuesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @issues = @project.issues
    respond_with(@issues)
  end

  def show
    @issue = Issue.find(params[:id])
    respond_with(@issue)
  end

  def new
    @issue = Issue.new(:project => Project.find(params[:project_id]))
    respond_with(@issue)
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def create
    @issue = Issue.new(params[:issue])
    @issue.owner = current_user
    @issue.project = Project.find(params[:project_id])
    @issue.save
    respond_with(@issue.project, @issue)
  end

  def update
    @issue = Issue.find(params[:id])
    @issue.update_attributes(params[:issue])
    respond_with(@issue.project, @issue)
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    respond_with(@issue.project, @issue)
  end
end
