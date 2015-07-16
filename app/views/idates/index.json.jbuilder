json.array!(@idates) do |idate|
  json.extract! idate, :id, :title, :description, :start_date, :ending_date
  json.url idate_url(idate, format: :json)
end
