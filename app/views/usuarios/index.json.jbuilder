json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id
  json.extract! usuario, :nome
end
