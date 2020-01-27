class ChatsController < ApplicationController

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(create_params)
    if @chat.save!
        redirect_to controller: :blogs, action: :show ,notice: "投稿完了しました"        
      else
        render :index
      end
  end

  private
  def create_params
    params.require(:chat).permit(:message).merge(blog_id: current_user.blogs.id)
  end

end
