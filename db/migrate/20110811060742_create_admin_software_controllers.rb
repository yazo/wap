class CreateAdminSoftwareControllers < ActiveRecord::Migration
  def self.up
    create_table :admin_software_controllers do |t|
      t.string :title
      t.text :description
      t.string :language

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_software_controllers
  end
end
