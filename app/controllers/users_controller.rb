class UsersController < ApplicationController
  def index
    @users = User.ordered
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit, notice: 'Не удалось обновить данные'
    end
  end

  private

  def user_params
    params.require(:user).permit(:role, :status)
  end
end
