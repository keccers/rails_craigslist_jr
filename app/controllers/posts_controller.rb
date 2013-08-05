class PostsController < ApplicationController

def index
  @posts = Post.where(category_id: params[:category_id])
  @category = Category.find(params[:category_id])
end

def create

  #pulling data to create post
end

def new

  #render the form
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

