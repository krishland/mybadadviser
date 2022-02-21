class ChangeDefaultAvailabilityToPolitics < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:politics, :availability, from: nil, to: true)
  end
end
