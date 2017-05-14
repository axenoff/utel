class AddReaction < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :reaction, :boolean, :default => false
  end
end
