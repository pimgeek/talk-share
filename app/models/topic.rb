class Topic < ActiveRecord::Base

  has_many :topic_fields, :dependent => :destroy

  validates :title1, :title1_tag, :title2, :title2_tag, :presence => true

  accepts_nested_attributes_for :topic_fields

end