class PostsController < ApplicationController

def index
  @posts = Post.where(category_id: params[:category_id])
  @category = Category.find(params[:category_id])
end

def create
  @post = Post.new(params[:post])
  @post.category_id = params[:category_id]
  @post.save

  redirect_to category_posts_path
end

def new
  @post = Post.new
end

def edit
end

def show
end

def update
end

def destroy
end

end

