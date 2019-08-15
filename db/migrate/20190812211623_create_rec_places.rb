class CreateRecPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :rec_places do |t|
      t.string :opening_hours
      t.string :name
      t.float :geometry
      t.string :formatted_address

      t.timestamps
    end
  end
end
