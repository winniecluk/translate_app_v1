class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Signed up!"
      redirect_to user_path(@user[:id])
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

private

  def user_params
    params.require(:user).permit(:f_name, :l_name,
      :email, :password, :password_confirmation, :phone_number,
      :street_address, :city, :zip_code, :country,
      :time_zone)
  end
end
