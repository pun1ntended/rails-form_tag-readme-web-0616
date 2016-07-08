class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(:title => params[:title], :description => params[:descriptionr])
    redirect_to post_path(@post)
  end
end