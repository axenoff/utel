class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :code
      t.string :name
      t.text :object
      t.text :address
      t.text :status

      t.timestamps
    end
  end
end
