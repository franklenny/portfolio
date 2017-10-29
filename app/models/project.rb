class Project < ApplicationRecord
  belongs_to :user

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end

  end

  # def show
  # end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
  end

  private

  def project_params
  end
end
