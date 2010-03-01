class Room < ActiveRecord::Base
    set_table_name 'Room'
    set_primary_key 'PK_Room'
    has_many :devices, :foreign_key => 'FK_Room'
    belongs_to :room_type, :foreign_key => 'FK_RoomType'
    belongs_to :installation, :foreign_key => 'FK_Installation'  
end
