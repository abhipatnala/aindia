class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    user = User.find(params[:id])
    user.destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

end
