class AddCoordinatesToPolitics < ActiveRecord::Migration[6.1]
  def change
    add_column :politics, :latitude, :float
    add_column :politics, :longitude, :float
  end
end
