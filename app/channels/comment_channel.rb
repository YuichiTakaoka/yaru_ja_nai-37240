class CommentChannel < ApplicationCable::Channel
  def subscribed
    @profile = Profile.find(params[:profile_id])
    stream_for @profile
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
