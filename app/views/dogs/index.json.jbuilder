json.array!(@dogs) do |dog|
  json.extract! dog, :id, :user_id, :name, :breed, :bday
  json.url dog_url(dog, format: :json)
end
