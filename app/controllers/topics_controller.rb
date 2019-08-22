class TopicsController < ApplicationController
  def index
    @topics = Topic.all.includes(:favorite_users)
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = current_user.topics.new(topic_params)
    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  def search
    @topics = Topic.search(params[:search])
  end
  
  def destroy
    @topic = Topic.find_by(id: params[:id])
    @topic.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to(topics_path)
  end
  
  private
  def topic_params
    params.require(:topic).permit(:description, :year, :class_name, :class_teacher, :semester, :week, :term, :satisfaction, :difficulty_level, :assessment)
  end
  
end