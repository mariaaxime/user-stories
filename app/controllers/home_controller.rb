class HomeController < ApplicationController
  def index
    @post = current_user.posts.build if user_signed_in?
    @seen = current_user.seens.build if user_signed_in?
  end
end
