class PostsController < ApplicationController
  before_filter :load_category

  def index
    @posts = @category.posts #Post.where(category_id: params[:category_id])
  end

  def create
    @post = @category.posts.new(params[:post])
    p params
    if @post.save
      #@post.create_tag_list
      redirect_to category_posts_path
    else
      render "new"
    end
  end

  def new
    @post = @category.posts.new
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.update_attributes(params[:post])
    redirect_to category_post_path
  end

  def destroy
    Post.find_by_id(params[:id]).destroy
    redirect_to category_posts_path
  end

  private

  def load_category
    @category = Category.find(params[:category_id])
  end
end
