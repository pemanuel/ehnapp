class AddMoreToUsersDevise < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :phone, :string
  end
end
