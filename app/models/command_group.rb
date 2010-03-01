class CommandGroup < ActiveRecord::Base
  set_table_name 'CommandGroup'
  set_primary_key 'PK_CommandGroup'
  belongs_to :installation, :foreign_key => 'FK_Installation'
  has_many :command_group_commands, :foreign_key => 'FK_CommandGroup'
end
