class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = current_user.projects.new(project_params)
    if @project.save
      redirect_to accounts_path
      flash[:notice] = "You created a new project!"
    else
      render :new
      flash[:notice] = "Incomplete fields."
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to accounts_path
      flash[:notice] = "You've updated this project!"
    else
      render :edit
      flash[:notice] = "Incomplete fields."
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

private

  def project_params
    params.require(:project).permit(
      :name,
      :kind,
      :budget,
      :delivery_date,
      :word_count,
      :special_request,
      :sample_text,
      :need_translator,
      :need_transcriber,
      :need_graphic_designer,
      :assigned,
      :completed,
      :language_1,
      :language_2
      )
  end
end
