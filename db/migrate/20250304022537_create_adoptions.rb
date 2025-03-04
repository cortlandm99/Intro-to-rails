class CreateAdoptions < ActiveRecord::Migration[8.0]
  def change
    create_table :adoptions do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :adoption_date

      t.timestamps
    end
  end
end
