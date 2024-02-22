class PostsController < ApplicationController
  def index #一覧表示
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(content:  params[:content])
    redirect_to "/posts"
  end


end
