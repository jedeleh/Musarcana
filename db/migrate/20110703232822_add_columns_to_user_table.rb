class AddColumnsToUserTable < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string, :required => true
    add_column :users, :last_name, :string, :required => true
    add_column :users, :is_admin, :boolean, :default => false, :required => true
  end

  def self.down
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :is_admin
  end
end
