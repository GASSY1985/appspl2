class BlogsController < ApplicationController
  def index
  end

  def new
  end

  def create
    Blog.create(create_params)
    redirect_to controller: :blogs, action: :index
  end

  private
  def create_params
    params.require(:blog).permit(:title, :content).merge(user_id: current_user.id)
  end

  def show
    # @blog = Blog.find(params[:id]).inculudes(:chats)
  end

end
