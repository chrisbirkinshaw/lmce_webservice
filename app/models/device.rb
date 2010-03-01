class Device < ActiveRecord::Base
  set_table_name 'Device'	
  set_primary_key 'PK_Device'
  belongs_to :device_template, :foreign_key => 'FK_DeviceTemplate'
  belongs_to :room, :foreign_key => 'FK_Room'
  belongs_to :installation, :foreign_key => 'FK_Installation'
 end
