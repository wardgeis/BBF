json.array!(@beer_bars) do |beer_bar|
  json.extract! beer_bar, :id, :bb_id, :name, :address, :state, :zipcode, :description, :website, :datecreated
  json.url beer_bar_url(beer_bar, format: :json)
end
