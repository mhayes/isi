class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new
  end
  
  def create
    @project = Project.create(params[:project])
    redirect_to projects_url, :notice => "Project successfully created"
  end
  
  def show
    @project = Project.find(params[:id])
    @slides = @project.slides
  end

end
