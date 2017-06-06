class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)   
    if @post.save
      flash[:success] = "Post submitted"
      redirect_to @post
    else
      render 'new'
    end
  end

  private 

    def post_params
      params.require(:post).permit(:subject, :title)
    end 

end
