class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @profile = Profile.find(params[:profile_id])
    CommentChannel.broadcast_to @profile, { comment: @comment, user: @comment.user } if @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, profile_id: params[:profile_id])
  end
end
