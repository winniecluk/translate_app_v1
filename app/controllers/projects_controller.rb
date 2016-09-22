class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @bids = @project.bids
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

  def completeclient
    @project = Project.find(params[:id])
    @project.completed_client = true
    if @project.save(validate: false)
      redirect_to accounts_path
      flash[:notice] = "You've marked this completed!"
    else
      render :show
      flash[:notice] = "Unable to mark completed."
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to accounts_path
  end

private

  def project_params
    params.require(:project).permit(
      :accepted_bid_id,
      :assigned,
      :budget,
      :completed,
      :completed_client,
      :completed_vendor,
      :delivery_date,
      :document,
      :kind,
      :language_1,
      :language_2,
      :minutes_in_file,
      :name,
      :need_graphic_designer,
      :need_transcriber,
      :need_translator,
      :sample_text,
      :special_request,
      :word_count,
      :vendor_id
      )
  end
end
