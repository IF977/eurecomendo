json.array!(@contratantes) do |contratante|
  json.extract! contratante, :id, :nome, :endereco, :email, :contato, :user_id
  json.url contratante_url(contratante, format: :json)
end
