json.array!(@recomendacaos) do |recomendacao|
  json.extract! recomendacao, :id, :servico, :prestador, :contato_prestador, :satisfacao, :user_id
  json.url recomendacao_url(recomendacao, format: :json)
end
