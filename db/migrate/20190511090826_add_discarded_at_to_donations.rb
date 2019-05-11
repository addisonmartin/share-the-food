class AddDiscardedAtToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :discarded_at, :datetime
    add_index :donations, :discarded_at
  end
end
