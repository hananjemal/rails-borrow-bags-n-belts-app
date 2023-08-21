class FixBookingReferences < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :user_id, :integer
    remove_column :bookings, :item_id, :integer

    add_reference :bookings, :user, null: false, foreign_key: true
    add_reference :bookings, :item, null: false, foreign_key: true
  end
end
