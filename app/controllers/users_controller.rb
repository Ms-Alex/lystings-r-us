class UsersController < ApplicationController
  before_action :require_user, only: [:index, :edit, :update, :destroy]
  before_action :fetch_user, only: [:edit, :update, :show, :destroy]

  def index
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(new_user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user.id)
    else
      render :new
    end
  end

  def show
    #code
  end

  def edit

  end

  def update
    if @user.realtor
      @user.update(update_realtor_user_params)
    else
      @user.update(update_norm_user_params)
    end
    if @user.save
      redirect_to '/users'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
  end


  private
  def fetch_user
    @user = User.find(params[:id])
  end

  def new_user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :realtor)
  end

  def update_norm_user_params
    #code
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number)
  end

  def update_realtor_user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :firm)
  end


end
