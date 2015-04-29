class CreateWorklists < ActiveRecord::Migration
  def change
    create_table :worklists do |t|
      t.string :name
      t.string :nextworklist
      t.boolean :status, null: false, default: false

      t.timestamps null: false
    end
  end
end
