class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  acts_as_messageable

  has_many :outgoing_referrals, foreign_key: :chwAssigned
  has_many :incoming_referrals, foreign_key: :referringCHW

  def admin?
    self.admin
  end
  
	def mailboxer_email(object)
	  email
	end
  
end
