class UsersController < ApplicationController
  before_action :require_user, only: [:index, :edit, :show, :update]

  before_action :fetch_user, only: [:edit, :update, :show]

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
      redirect_to edit_user_path(current_user.id)
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
    param = nil
    if @user.realtor?
      param = update_realtor_user_params
    else
      param = update_norm_user_params
    end

    @user.update(param)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  # def destroy
  #   session[:user_id] = nil
  #   @user.destroy
  #   redirect_to '/signup'
  # end


  private
  def fetch_user
    @user = User.find(params[:id])
  end

  def new_user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :realtor)
  end

  def update_norm_user_params
    #code
    params.require(:user).permit( :first_name, :last_name, :phone_number)
  end

  def update_realtor_user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :firm)
  end


end
