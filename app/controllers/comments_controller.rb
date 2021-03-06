class CommentsController < ApplicationController
  before_action :set_message, only: %i[ index new create ]

  def index
  end

  def new
    @comment = @message.comments.new
  end

  def create
    @comment = @message.comments.create!(comment_params)
    redirect_to message_comments_path(@message)
  end

  private

  def set_message
    @message = Message.find(params[:message_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end