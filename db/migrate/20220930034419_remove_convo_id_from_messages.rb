class RemoveConvoIdFromMessages < ActiveRecord::Migration[7.0]
  def change
    remove_column :messages, :convo_id, :integer
  end
end
