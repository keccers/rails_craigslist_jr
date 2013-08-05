class PostsController < ApplicationController
  before_filter :load_category

  def index
    @posts = @category.posts #Post.where(category_id: params[:category_id])
  end

  def create
    @post = @category.posts.new(params[:post])
    @post.save

    redirect_to category_posts_path
  end

  def new
    @post = @category.posts.new
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def load_category
    @category = Category.find(params[:category_id])
  end
end
