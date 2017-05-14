class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.text :district
      t.text :address
      t.string :house_exist
      t.string :line_exist
      t.string :type_of_input
      t.string :app_price
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
