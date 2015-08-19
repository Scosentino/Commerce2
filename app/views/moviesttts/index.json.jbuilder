json.array!(@moviesttts) do |moviesttt|
  json.extract! moviesttt, :id, :name, :description, :price, :active
  json.url moviesttt_url(moviesttt, format: :json)
end
