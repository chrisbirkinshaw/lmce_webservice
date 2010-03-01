class CreateInstallations < ActiveRecord::Migration
  def self.up
    create_table :installations do |t|
      t.string, :Description
      t.string, :Name
      t.string, :Address
      t.string, :City
      t.string, :State
      t.string, :Zip
      t.string, :ActivationCode
      t.text, :LastStatus
      t.datetime, :LastAlive
      t.boolean, :isActive
      t.boolean :isMonitored

      t.timestamps
    end
  end

  def self.down
    drop_table :installations
  end
end
