class Installation < ActiveRecord::Base
  set_table_name 'Installation'
  set_primary_key 'PK_Installation'
  has_many :command_groups, :foreign_key => 'FK_Installation'
  has_many :devices, :foreign_key => 'FK_Installation'
  has_many :rooms, :foreign_key => 'FK_Installation'
end
