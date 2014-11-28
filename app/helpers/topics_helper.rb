module TopicsHelper
  def show_first(topics)
    topics.each {|t| return t unless t.title.blank?}

    nil
  end
end