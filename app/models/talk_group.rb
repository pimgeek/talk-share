class TalkGroup < ActiveRecord::Base

  belongs_to :user
  has_many :topics, :dependent => :destroy

  accepts_nested_attributes_for :topics


  default_scope -> { order('id desc') }


  module UserMethods
    def self.included(base)
      base.has_many :talk_groups
    end
  end

end