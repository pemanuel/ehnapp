class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.date :vistDate
      t.time :startTime
      t.time :endTime
      t.string :visitType
      t.string :patientLastName
      t.string :patientFirstName
      t.string :patientMiddleName
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :homePhone
      t.integer :mobilePhone
      t.integer :workPhone
      t.integer :patientSSN
      t.date :patientDOB
      t.integer :patientAge
      t.string :patientRace
      t.string :patientEthnicity
      t.boolean :sexMale
      t.boolean :sexFemale
      t.date :referralDate
      t.string :emergencyContactName
      t.string :emergencyContactRelationship
      t.integer :emergencyContactPhone
      t.string :referringProvider
      t.string :referringOrgAgency
      t.integer :referringCHW
      t.text :primaryDiag
      t.text :notes
      t.text :goals
      t.text :reasonForCHWReferral
      t.boolean :takingMeds
      t.string :takingMedsValue
      t.boolean :otherMedicalConcerns
      t.text :ifYes
      t.integer :chwAssigned
      t.date :nextVistDate

      t.timestamps null: false
    end
  end
end
