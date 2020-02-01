class ChatsController < ApplicationController

  def index
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(create_params)
    if @chat.save!
      respond_to do |format|
        format.html { redirect_to blog_path(@chat.blog_id)}
        format.json
      end
    else
      render :index
    end
  end

  private
  def create_params
    params.require(:chat).permit(:message).merge(blog_id: params[:blog_id],user_name: current_user.name)
  end

end
