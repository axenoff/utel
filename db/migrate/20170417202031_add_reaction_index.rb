class AddReactionIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :requests, :reaction
  end
end
