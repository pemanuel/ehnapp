class AddWorklistToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :worklist_id, :integer
  end
end
