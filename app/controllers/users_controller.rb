class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

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
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :phone, :address, :rank, :detail, :payment_type, :delivery, :warranty,
                                 :plate, :shaken, :shaken_until, :service_type, :service_category, :service_status,
                                 :service_value, :service_title, :service_contact, :service_location, :service_address,
                                 :service_phone, :service_body, :service_rank, :service_detail, :service_payment_type,
                                 :service_delivery, :service_warranty)
  end
end
