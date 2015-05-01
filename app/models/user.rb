class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  acts_as_messageable

  has_many :outgoing_referrals, foreign_key: :chwAssigned, inverse_of: :assigned_chw
  has_many :incoming_referrals, foreign_key: :referringCHW, inverse_of: :referring_chw

  def admin?
    self.admin
  end

  def manager?
    self.manager
  end

  def chw?
    self.chw
  end
  
	def mailboxer_email(object)
	  email
	end
  
end
