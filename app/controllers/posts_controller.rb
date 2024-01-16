class PostsController < ApplicationController
  def index #indexアクションの定義
    @posts = Post.all #Postレコードの全てのデータを代入
  end

  def new
  end

  def create
    Post.create(todo: params[:todo])
    redirect_to "/posts"
  end
end
