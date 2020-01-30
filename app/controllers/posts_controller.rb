class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order("created_at DESK")
  end

  def new
    Post.new
  end

  def create(post_params)
    redirect_to posts_path
  end




  private
  def post_params
    params.require(:post).permit(:title, :content).merge(user_id: current_user.id)
  end
end
