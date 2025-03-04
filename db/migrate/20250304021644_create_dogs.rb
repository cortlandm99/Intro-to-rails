class CreateDogs < ActiveRecord::Migration[8.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.text :description
      t.string :image_url
      t.references :breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
