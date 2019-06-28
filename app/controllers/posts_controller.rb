class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.create(title: params[:title], description: params[:description])
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:find])
    render :show
  end

end
