class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    p @project.errors.full_messages

    if @project.save
      redirect_to root_path
    else
      render new_project_path
    end

  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:user_id, :name, :image_url, :description, :link_to_project)
  end
end
