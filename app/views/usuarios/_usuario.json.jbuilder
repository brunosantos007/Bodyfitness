json.extract! usuario, :id, :email, :nome, :telefone, :senha, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
