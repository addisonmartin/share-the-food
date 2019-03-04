class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :name
      t.text :details
      t.belongs_to :region, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
