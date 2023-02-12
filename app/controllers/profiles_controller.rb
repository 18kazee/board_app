class ProfilesController < ApplicationController
  before_action :set_user, only: %i(edit show)

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to profile_path, success: '成功'
    else
      flash.now[:dangar] = '失敗'
      render :edit
    end
  end

  def show; end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:first_name, last_name, :email, :avatar, :avatar_cache)
  end
end
