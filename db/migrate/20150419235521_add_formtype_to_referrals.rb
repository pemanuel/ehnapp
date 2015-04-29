class AddFormtypeToReferrals < ActiveRecord::Migration
  def change
    add_column :referrals, :formtype, :string
  end
end
