class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new params[:project]
    @project.owner = current_user
    @project.save

    respond_with @project
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
