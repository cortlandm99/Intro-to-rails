class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
