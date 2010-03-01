class DeviceTemplate < ActiveRecord::Base
  set_table_name 'DeviceTemplate'
  set_primary_key 'PK_DeviceTemplate'
  has_many :devices, :foreign_key => 'FK_DeviceTemplate'
end
