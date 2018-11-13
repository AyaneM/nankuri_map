class PostController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @post = posts.build(post_params)
    if @post.save
      flash[:success] = "登録されました"
      redirect_to post_new_url
    end
  end
  
  def index
    @posts = Post.all
  end
  
  private
  
  def post_params
    params.require(:post).permit(:content)
  end
end
