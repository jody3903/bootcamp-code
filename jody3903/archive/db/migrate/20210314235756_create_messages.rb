class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
        t.string :comment
        t.integer :chat_id
    end
  end
end
