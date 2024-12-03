class CreateStars < ActiveRecord::Migration[7.1]
  def change
    create_table :stars do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :price
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
