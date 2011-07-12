class IssuesController < ApplicationController
  # GET /issues
  # GET /issues.xml
  def index
    @issues = Issue.all
    @project = Project.find(params[:project_id])
    respond_with(@issues)
  end

  # GET /issues/1
  # GET /issues/1.xml
  def show
    @issue = Issue.find(params[:id])
    respond_with(@issue)
  end

  # GET /issues/new
  # GET /issues/new.xml
  def new
    @issue = Issue.new
    @project = Project.find(params[:project_id])
    respond_with(@issue)
  end

  # GET /issues/1/edit
  def edit
    @issue = Issue.find(params[:id])
  end

  # POST /issues
  # POST /issues.xml
  def create
    @issue = Issue.new(params[:issue])
    @issue.owner = current_user
    @issue.project = Project.find(params[:project_id])
    @issue.save
    respond_with(@issue)
  end

  # PUT /issues/1
  # PUT /issues/1.xml
  def update
    @issue = Issue.find(params[:id])
    @issue.update_attributes(params[:issue])
    respond_with(@issue)
  end

  # DELETE /issues/1
  # DELETE /issues/1.xml
  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    respond_with(@issue)
  end
end
