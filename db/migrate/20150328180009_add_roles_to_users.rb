class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :manager, :boolean
    add_column :users, :chw, :boolean
end
end
