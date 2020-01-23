class BlogsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create
    @blog = @user.blogs.create(create_params)
    redirect_to controller: :blogs, action: :index
  end

  private
  def create_params
    params.require(:blog).permit(:title, :content, :img).merge(user_id: current_user.id)
  end

  def show
    # @blog = Blog.find(params[:id]).inculudes(:chats)
  end

end
