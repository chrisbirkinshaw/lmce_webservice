class RoomType < ActiveRecord::Base
  set_table_name 'RoomType'
  set_primary_key 'PK_RoomType'
  has_many :rooms, :foreign_key => 'FK_RoomType' 
end
