class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :username, :format => {:with => /\A\w+\z/},
                    :length => {:in => 4..20},
                    :presence => true,
                    :uniqueness => {:case_sensitive => false}


  # before_validation :set_default_password

  # def set_default


  include TalkGroup::UserMethods


end
