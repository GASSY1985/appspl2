class BlogsController < ApplicationController

  def index
  end

  def new
    @blogs = Blog.new
  end

  def create
    @blog = current_user.blogs.new(create_params)
      if @blog.save!
        redirect_to controller: :blogs, action: :index ,notice: "投稿完了しました"        
      else
        render :new        
      end
  end

  def show
    @blog = Blog.find(params[:id])
    # chatの繋ぎ方（includes chats? no method error出た）
  end

  private
  def create_params
    params.require(:blog).permit(:title, :content).merge(user_id: current_user.id)
  end
end
