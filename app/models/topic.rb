class Topic < ActiveRecord::Base
  
  belongs_to :talk_group

  validates :title_tag, :presence => true


  default_scope -> { order('id asc') }
  scope :by_tag, ->(tag) { where("title_tag = ?", tag) }

end