class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @contacts = Contact.new
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

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to root_path
    else
      redirect_to edit_project_path
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:user_id, :name, :tech_stack, :image_url, :description, :link_to_project)
  end
end
