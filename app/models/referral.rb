class Referral < ActiveRecord::Base
	belongs_to :patient
  belongs_to :assigned_chw, class_name: 'User', foreign_key: :chwAssigned, inverse_of: :outgoing_referrals
  belongs_to :referring_chw, class_name: 'User', foreign_key: :referringCHW, inverse_of: :incoming_referrals
end
