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
    params.require(:user).permit(:email, :password, :password_confirmation, :is_user, :is_garage, :is_service, :is_admin,
                                 :name, :username, :bio, :location, :website, :role, :status, :phone, :mobile_phone, :whatsapp,
                                 :garage_name, :garage_bio, :garage_address, :garage_city, :garage_state, :garage_zipcode,
                                 :garage_phone, :garage_mobile_phone, :garage_whatsapp, :garage_email, :garage_website,
                                 :garage_hours, :garage_services, :garage_certifications, :garage_payment_options,
                                 :service_name, :service_bio, :service_address, :service_city, :service_state, :service_zipcode,
                                 :service_phone, :service_mobile_phone, :service_whatsapp, :service_email, :service_website,
                                 :service_hours, :service_services, :service_certifications, :service_payment_options)

  end
end
