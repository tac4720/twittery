
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post, notice: 'ツイートしました.'
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to @post, notice: '更新されました.'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, notice: '削除されました'
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end

