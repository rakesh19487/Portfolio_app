class TopicsController < ApplicationController
  layout "blogs"
  before_action :side_bar_topics
 
  def show
    @topic = Topic.find(params[:id])
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.order_by_created_at.page(params[:page]).per(5)
    else  
      @blogs = @topic.blogs.order_by_created_at.show_only_publshed_blog.page(params[:page]).per(5)
    end  
  end

  def index
    @topics = Topic.all
  end

  private

  def side_bar_topics
    @side_bar_topics = Topic.with_blogs
  end  
end
