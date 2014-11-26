class Topic < ActiveRecord::Base

  validates :title1, :title1_tag, :title2, :title2_tag, :presence => true

end