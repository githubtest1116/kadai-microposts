class ToppagesController < ApplicationController
  def index
    #session[:user_id] = nil
    if logged_in?
      @user = current_user
      @micropost = current_user.microposts.build
      @microposts = current_user.feed_microposts.order('created_at desc').page(params[:page])
    end
  end
end
