class TopicsController < ApplicationController
  before_action :topic_find, only: [:show, :edit, :update, :destroy]

  def index
    @topic = Topic.all
  end

  def show

  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user = current_user

    if @topic.save
      redirect_to topics_path
    else
      render 'new'
    end
  end

  def edit
    if @topic.user != current_user
      redirect_to topic_path(@topic)
    end
  end

  def update
    if @topic.user == current_user
      @topic.update(topic_params)
      redirect_to @topic
    else
      render 'edit'
    end
  end

  def destroy
    @topic.destroy
    redirect_to root_path
  end

  private

  def topic_find
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title, :body)
  end

end
