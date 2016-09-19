class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @project = @user.projects.new
  end

  def create
    @user = User.find(params[:user_id])
    @project = @user.projects.new(project_params)
    if @project.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to user_path(@project.user_id)
      flash[:notice] = "You've updated this project!"
    else
      render :edit
      flash[:notice] = "Incomplete fields."
    end
  end

private

  def project_params
    params.require(:project).permit(:name, :kind, :budget,
      :delivery_date, :word_count, :need_translator, :need_transcriber,
      :need_graphic_designer, :special_request, :sample_text)
  end
end
