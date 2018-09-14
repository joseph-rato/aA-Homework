class UsersController < ApplicationController
  def index
    @user = User.all
    render :index
  end
  def new
    @new = User.new
    render :new
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    @user = User.new(clean_params)
    if @user.save
      login!(@user)
      redirect_to user_url(@user)
    else
      flash[:error] = @user.errors.full_messages
      redirect_to new_user_url
    end
  end

  private
  def clean_params
    params.require(:user).permit(:email, :password)
  end

end
