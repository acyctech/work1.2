json.extract! todo, :id, :who, :what, :when, :where, :how, :why, :result, :flag, :created_at, :updated_at
json.url todo_url(todo, format: :json)