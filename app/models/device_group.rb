class DeviceGroup < ActiveRecord::Base
  set_table_name 'DeviceGroup'
  set_primary_key 'PK_Device_Group'
  has_many :command_group_commands, :foreign_key => 'FK_DeviceGroup' 
end
