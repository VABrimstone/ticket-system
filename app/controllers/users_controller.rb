class UsersController < ApplicationController
  before_action :set_user, only: %i[edit update]
  before_action :authorize_user

  def index
    @users = User.ordered
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit, notice: 'Не удалось обновить данные'
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def authorize_user
    user = @user || User
    authorize user
  end

  def user_params
    params.require(:user).permit(:role, :status)
  end
end
