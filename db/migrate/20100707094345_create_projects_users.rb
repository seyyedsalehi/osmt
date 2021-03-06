class CreateProjectsUsers < ActiveRecord::Migration
  def self.up
    create_table :projects_users do |t|
      t.references :project
      t.references :user
      t.integer    :permission

      t.timestamps
    end
    
    add_index :projects_users, [:project_id, :user_id], :unique => true
    
  end

  def self.down
    drop_table :projects_users
  end
end
