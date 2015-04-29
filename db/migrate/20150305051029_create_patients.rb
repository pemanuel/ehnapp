class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :lastname
      t.string :middlename
      t.string :firstname
      t.date :birthdate
      t.string :sex
      t.string :ethnicity
      t.string :uniqueid
      t.string :accountnumber
      t.string :medicaidid
      t.string :medicareid
      t.string :ssn

      t.timestamps null: false
    end
  end
end
