class AddNameToSprints < ActiveRecord::Migration
  def self.up
    add_column :sprints, :name, :string
  end

  def self.down
    remove_column :sprints, :name
  end
end
