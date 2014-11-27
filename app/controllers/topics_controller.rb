class TopicsController < ApplicationController
  before_filter :pre_load

  def pre_load
    @topic = Topic.find(params[:id]) if params[:id]

    file = Rails.root.join('config', 'share_tags.yaml')
    @tags = YAML::load_documents(File.open(file))
  end

  def topic_params
    params.require(:topic).permit(:title1, :title1_tag, :title2, :title2_tag, :user_id, 
    topic_fields_attributes: [:title, :title_tag])
  end

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
    @topic.topic_fields.build
  end

  def create
    @topic = Topic.new(topic_params)

    return redirect_to "/topics" if @topic.save

    @topic.topic_fields = Topic.new.topic_fields
    @topic.topic_fields.build

    return render 'new'
  end


  def show
  end

  def edit
    @topic.topic_fields = Topic.new.topic_fields
    @topic.topic_fields.build
  end


  def update
    if @topic.update_attributes(topic_params)
      return redirect_to "/topics" if @topic.save
    end

    @topic.topic_fields = Topic.new.topic_fields
    @topic.topic_fields.build

    render 'edit'
  end


end