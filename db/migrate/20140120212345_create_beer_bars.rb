class CreateBeerBars < ActiveRecord::Migration
  def change
    create_table :beer_bars do |t|
      t.integer :bb_id
      t.string :name
      t.string :address
      t.string :state
      t.string :zipcode
      t.string :description
      t.string :website
      t.date :datecreated

      t.timestamps
    end
  end
end
