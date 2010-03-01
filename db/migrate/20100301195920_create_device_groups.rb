class CreateDeviceGroups < ActiveRecord::Migration
  def self.up
    create_table :device_groups do |t|
      t.string, :Description
      t.integer :Type

      t.timestamps
    end
  end

  def self.down
    drop_table :device_groups
  end
end
