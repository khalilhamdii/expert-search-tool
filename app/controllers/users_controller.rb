class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def friend_list
    user = User.find(params[:id])
    @friendlist = user.friends
  end
end
