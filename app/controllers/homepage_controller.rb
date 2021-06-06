class HomepageController < ApplicationController
  def index
    @users = user_signed_in? ? User.where('id<>?', current_user.id) : User.all
  end
end
