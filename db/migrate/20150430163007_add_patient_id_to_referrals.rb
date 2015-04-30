class AddPatientIdToReferrals < ActiveRecord::Migration
  def change
    add_column :referrals, :patient_id, :integer
  end
end
