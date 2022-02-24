class AddAddressToPolitics < ActiveRecord::Migration[6.1]
  def change
    add_column :politics, :address, :string
  end
end
