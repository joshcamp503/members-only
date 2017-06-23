class PostsController < ApplicationController
  include ApplicationHelper
  before_action :logged_in_user,      only: [:index, :new, :create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    user = current_user
    @post = user.posts.create(post_params)
    if @post.save
      flash[:success] = "Post submitted"
      redirect_to post_path(@post.user)
    else
      render 'new'
    end
  end

  private

    def post_params
      params.require(:post).permit(:subject, :body )
    end 

end

