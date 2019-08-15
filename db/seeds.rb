# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RecPlace.create(name: "Rec Place 1", formatted_address: "123 Road")


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
