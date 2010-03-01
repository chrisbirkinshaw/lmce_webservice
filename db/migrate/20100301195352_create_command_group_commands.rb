class CreateCommandGroupCommands < ActiveRecord::Migration
  def self.up
    create_table :command_group_commands do |t|
      t.boolean, :TurnOff
      t.boolean, :OrderNum
      t.boolean :DeliveryConfirmation

      t.timestamps
    end
  end

  def self.down
    drop_table :command_group_commands
  end
end
