class CreatePolitics < ActiveRecord::Migration[6.1]
  def change
    create_table :politics do |t|
      t.string :name
      t.string :country
      t.text :description
      t.string :picture
      t.string :first_stupid
      t.string :second_stupid
      t.string :third_stupid
      t.string :fourth_stupid
      t.string :fifth_stupid
      t.boolean :availability
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
