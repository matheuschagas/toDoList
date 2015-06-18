json.array!(@tarefas) do |tarefa|
  json.extract! tarefa, :id
  json.url tarefa_url(tarefa, format: :json)
end
