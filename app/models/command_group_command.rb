class CommandGroupCommand < ActiveRecord::Base
  set_table_name 'CommandGroup_Command'
  set_primary_key 'PK_CommandGroup_Command' 
  belongs_to :command_group, :foreign_key => 'FK_CommandGroup'
  belongs_to :command, :foreign_key => 'FK_Command'
  belongs_to :device, :foreign_key => 'FK_Device'
  belongs_to :device_group, :foreign_key => 'FK_DeviceGroup'   
end
