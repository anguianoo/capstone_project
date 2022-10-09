class AddUserIdAndRoomIdToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :user_id, :integer
    add_column :messages, :room_id, :integer
  end
end
