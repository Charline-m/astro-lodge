class AddStatusToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :status, :boolean, default: false
  end
end
