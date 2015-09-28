class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def show
  end

  def create
  	@user = User.new(params_user)
  	if @user.save
      session[:user_id] = @user.id
  		redirect_to @user, notice: "New account created."
  	else
  		render :new
  	end
  end

  def update
    if @user.update(params_user)
      redirect_to @user, notice: "Profile updated."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Account was deleted."
  end

  private

  def params_user
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :address, :bio, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
