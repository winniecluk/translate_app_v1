class SessionsController < ApplicationController

  #this is the log-in page
  def new

  end

  #this authenticates and creates the session
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user[:id])
    else
      flash.now.alert = "Invalid login credentials."
      render :new
    end
  end


  def destroy
    session[:user_id] =  nil
    redirect_to root_path, notice: "Logged out!"
  end

end
