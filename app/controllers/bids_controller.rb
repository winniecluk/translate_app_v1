class BidsController < ApplicationController

  def show

  end

  def new
    @project = Project.find(params[:project_id])
    @bid = Bid.new
  end

  def create
    @bid = Bid.new(bid_params)
    @bid.project_id = params[:project_id]
    @bid.user_id = current_user.id
    if @bid.save
      redirect_to projects_path
      notice = "Sent bid to client!"
    else
      render :new
      alert = "Incomplete fields."
    end
  end


private

  def bid_params
    params.require(:bid).permit(:budget, :delivery_date)
  end

end
