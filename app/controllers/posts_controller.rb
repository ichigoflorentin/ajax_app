class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = ost.create(content: params[:content])
    render json{post: post}
  end
end
