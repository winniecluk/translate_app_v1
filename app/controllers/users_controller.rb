class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Signed up!"
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @projects = @user.projects
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

private

  def user_params
    params.require(:user).permit(:f_name, :l_name,
      :email, :password, :password_confirmation, :phone_number,
      :city, :zip_code, :country, :time_zone, :bio, :user_picture,
      :web_link, :job)
  end
end
