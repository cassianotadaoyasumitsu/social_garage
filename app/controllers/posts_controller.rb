class PostsController < ApplicationController
  before_action :set_user, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = @user
    if @post.save
      redirect_to user_posts_path, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :contact, :location, :category, :status, :value, :km, :year, :color,
                                 :gear, :brand, :model, :version, :fuel, :description, :rank, :detail, :payment_type,
                                 :delivery, :warranty, :plate, :shaken, :shaken_until, :service_type, :service_category,
                                 :service_status, :service_value, :service_title, :service_contact, :service_location,
                                 :service_address, :service_phone, :service_body, :service_rank, :service_detail,
                                 :service_payment_type, :service_delivery, :service_warranty)
  end
end
