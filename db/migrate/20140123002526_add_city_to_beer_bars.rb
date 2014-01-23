class AddCityToBeerBars < ActiveRecord::Migration
  def change
    add_column :beer_bars, :city, :string
  end
end
