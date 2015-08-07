class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  has_many :conversations, :foreign_key => :sender_id

  validates_format_of :email, :with => Devise.email_regexp

  def name
    email
  end
end
