class UsersController < ApplicationController
  def show
     @user = User.find(params[:id]) 
     @post = Post.all.order("id DESC").where(user_id: @user.id)
  end

  def following
    @user = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end
end
