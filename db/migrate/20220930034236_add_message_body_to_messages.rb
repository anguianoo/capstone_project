class AddMessageBodyToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :message_body, :string
  end
end
