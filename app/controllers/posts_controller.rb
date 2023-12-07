class PostsController < ApplicationController
  before_action :authenticate_user!, except: :index

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
    @post = Post.new(post_params)
    @post.creator = current_user.email

    if @post.save
      redirect_to post_path(@post)
      flash[:notice] = 'Post created'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end
end
