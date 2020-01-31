class ChatsController < ApplicationController

  def index
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(create_params)
    if @chat.save!
        redirect_to blog_path(@chat.blog_id)
        # controller: :blogs, action: :show tice: "投稿完了しました"        
      else
        render :index
      end
  end

  private
  def create_params
    params.require(:chat).permit(:message).merge(blog_id: params[:blog_id],user_name: current_user.name)
  end

end
