class UsersController < ApplicationController

  before_action :authorize, except: [:new, :create]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to App_Name! You've successfully signed up.
        Please complete your profile below, and then you can get started."
      redirect_to accounts_edit_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to accounts_path
      flash[:notice] = "You've updated your profile!"
    else
      redirect_to accounts_edit_path
      flash[:notice] = "Incomplete fields."
    end
  end

private

  def user_params
    params.require(:user).permit(
      :ata_certified,
      :available,
      :bio,
      :city,
      :company,
      :country,
      :email,
      :f_name,
      :is_client,
      :is_graphic_designer,
      :is_transcriber,
      :is_translator,
      :judicial_court,
      :l_name,
      :language_1,
      :language_2,
      :minimum_rate,
      :notary_fee,
      :password,
      :password_confirmation,
      :phone_number,
      :position,
      :rate_per_minute,
      :rate_per_word,
      :rate_per_work_hour,
      :rush_minimum,
      :rush_rate_per_minute,
      :rush_rate_per_word,
      :specialization,
      :time_zone,
      :trados,
      :trados_version,
      :user_picture,
      :web_link,
      :zip_code,
      :avatar
      )
  end
end
