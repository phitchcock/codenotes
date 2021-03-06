class ProjectsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "#{@project.name} created!"
    else
      flash[:error] = "Project did not save"
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path, notice: "#{@project.name} updated"
    else
      flash[:error] = "Project did not save"
      render :edit
    end
  end

  def destroy
    if @project.destroy
      redirect_to projects_path, notice: "#{@project.name} destroyed"
    else
      flash[:error] = "Project was not destroyed"
      redirect_to @project
    end
  end

  private

  def project_params
    params.require(:project).permit!
  end

  def set_project
    @project = Project.find(params[:id])
  end
end