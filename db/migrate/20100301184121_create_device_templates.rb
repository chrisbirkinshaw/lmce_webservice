class CreateDeviceTemplates < ActiveRecord::Migration
  def self.up
    create_table :device_templates do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :device_templates
  end
end
