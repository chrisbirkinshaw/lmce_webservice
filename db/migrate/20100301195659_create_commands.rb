class CreateCommands < ActiveRecord::Migration
  def self.up
    create_table :commands do |t|
      t.string, :Description
      t.string, :Define
      t.boolean, :AVCommand
      t.text, :Comments
      t.boolean :Log

      t.timestamps
    end
  end

  def self.down
    drop_table :commands
  end
end
