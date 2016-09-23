class BidsController < ApplicationController

  def show
    @bid = Bid.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params)
    @bid.project_id = params[:project_id]
    @bid.user_id = current_user.id
    @bid.f_name = current_user.f_name
    @bid.l_name = current_user.l_name
    if @bid.save
      redirect_to projects_path
      flash[:notice] = "Sent bid to client!"
    else
      render :new
      flash[:alert] = "Incomplete fields."
    end
  end

  def edit
    @bid = Bid.find(params[:id])
    @project = Project.find(params[:project_id])
  end

  def update
    @bid = Bid.find(params[:id])
    if @bid.update_attributes(bid_params)

      redirect_to project_path(@bid.project)
    else
      render :edit
    end
  end

  def complete
    @bid = Bid.find(params[:id])
    @project = @bid.project
    @bid.accepted = true
    @project.accepted_bid_id = @bid.id
    @project.assigned = true
    @project.vendor_id = @bid.user_id
    if @bid.save(validate: false) && @bid.project.save(validate: false)
      flash[:notice] = "Bid accepted!"
      redirect_to dashboard_path
    else
      redirect_to project_path(@project)
    end
  end

  def destroy
    @bid = Bid.find(params[:id])
    @project = @bid.project
    @bid.destroy
    redirect_to project_path(@project)
  end

private

  def bid_params
    params.require(:bid).permit(:budget, :delivery_date, :message)
  end

end
