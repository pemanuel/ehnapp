class RemovePatientFieldsFromReferrals < ActiveRecord::Migration
  def change
  	remove_column :referrals, :patientLastName
  	remove_column :referrals, :patientFirstName
  	remove_column :referrals, :patientMiddleName
  	remove_column :referrals, :address1
  	remove_column :referrals, :address2
  	remove_column :referrals, :city
  	remove_column :referrals, :state
  	remove_column :referrals, :zip
  	remove_column :referrals, :homePhone
  	remove_column :referrals, :mobilePhone
  	remove_column :referrals, :workPhone
  	remove_column :referrals, :patientSSN
  	remove_column :referrals, :patientDOB
  	remove_column :referrals, :patientAge
  	remove_column :referrals, :patientRace
  	remove_column :referrals, :patientEthnicity
  	remove_column :referrals, :sexMale
  	remove_column :referrals, :sexFemale
  	remove_column :referrals, :emergencyContactName
  	remove_column :referrals, :emergencyContactRelationship
  	remove_column :referrals, :emergencyContactPhone
  	remove_column :referrals, :sexFemale
  end
end
