class TalkGroup < ActiveRecord::Base

  has_many :topics, :dependent => :destroy

  accepts_nested_attributes_for :topics


  default_scope -> { order('id desc') }

end