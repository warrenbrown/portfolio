class ProjectsController < ApplicationController
  before_action :set_project, only: [ :show, :edit, :update, :destroy ]
  def index
    @projects = Project.order("created_at").all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice ] = 'Good job Warren your project has been created.'
      redirect_to projects_path
    else
      flash.now[ :alert ] = ' Looks like you have some errors try again.'
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
    if @project.update(project_params)
      flash[ :notice ] = 'Your project has been updated.'
      redirect_to @project
    else
      flash.now[ :alert ] = 'Looks like you have some errors try again.'
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    flash[:notice ] = 'Your project has been destroyed'
    redirect_to projects_path
  end


  private
  def set_project
    @project = Project.friendly.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link, :slug)
  end

end
