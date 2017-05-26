class CommentsController < ApplicationController
  before_action :set_comments, only: [:new,:create,:show,:update,:delete]
  def index
  end

  def new
    @comment = @topic.comments.new
  end

  def create
    @comment = @topic.comments.new(comment_params)
    @comment.save!
    redirect_to topic_path(@topic)
  end
  private

  def set_comments
    @topic = Topic.find(params[:topic_id])
  end

  def comment_params
    params.require(:comment).permit(:title, :body)
  end
end
