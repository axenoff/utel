class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def create
    if params[:request_id]
      @commentable = Request.find(params[:request_id])
    elsif params[:message_id]
      @commentable = Message.find(params[:message_id])
    end
    @comment = @commentable.comments.new(comment_params)

    @comment.author = current_user.username

    @comment.save
    redirect_to @commentable
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :text)
  end

end
