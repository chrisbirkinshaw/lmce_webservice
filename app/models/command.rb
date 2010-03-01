class Command < ActiveRecord::Base
  set_table_name 'Command'
  set_primary_key 'PK_Command'
  has_many :command_group_commands, :foreign_key => 'FK_Command'
end
