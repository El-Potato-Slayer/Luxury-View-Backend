class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.references :agent, null: false, foreign_key: true
      t.string :name
      t.string :picture
      t.text :description
      t.decimal :price
      t.string :address
      t.integer :floor_area
      t.integer :land_area

      t.timestamps
    end
  end
end
