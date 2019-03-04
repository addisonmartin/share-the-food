class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :name, required: true
      t.text :details, required: true
      t.datetime :fresh_until, required: true
      t.float :latitude, required: true
      t.float :longitude, required: true
      t.text :pickup_notes, required: true
      t.boolean :is_perishable, required: true
      t.boolean :requires_preparation, required: true
      t.boolean :is_vegetarian, required: true
      t.boolean :is_vegan, required: true
      t.boolean :is_gluten_free, required: true
      t.boolean :contains_peanut, required: true
      t.boolean :contains_treenut, required: true
      t.boolean :contains_dairy, required: true
      t.boolean :contains_soy, required: true
      t.boolean :contains_egg, required: true
      t.boolean :contains_fish, required: true
      t.boolean :contains_shellfish, required: true
      t.belongs_to :region, index: true, required: true
      t.belongs_to :user, index: true, required: true
      t.timestamps
    end
  end
end
