class Topic < ActiveRecord::Base

  belongs_to :talk_group

  # validates :title, :title_tag, :presence => true


  default_scope -> { order('id asc') }

end