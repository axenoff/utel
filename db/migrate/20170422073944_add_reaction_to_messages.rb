class AddReactionToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :reaction, :boolean, :default => false
    add_index :messages, :reaction
  end
end
