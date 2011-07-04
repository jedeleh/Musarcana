class CreateShouts < ActiveRecord::Migration
  def self.up
    create_table :shouts do |t|
      t.string :content
      t.datetime :time
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :shouts
  end
end
