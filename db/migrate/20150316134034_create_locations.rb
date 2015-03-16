class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :zipcode
      t.string :city
      t.string :state
      t.references :user, index: true

      t.timestamps
    end
  end
end
