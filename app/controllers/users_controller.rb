class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'Perfil atualizado com sucesso.'
    else
      render :edit
    end
  end

  def skills
    @user = current_user
    @skills = @user.skills
  end

  def favorite_jobs
    @user = current_user
    @favorite_jobs = @user.favorite_jobs
  end


  private

  def user_params
    params.require(:user).permit(:full_name, :email, :password, :password_confirmation, :current_password)
  end
end
