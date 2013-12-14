json.array!(@accounts) do |account|
  json.extract! account, :id, :account_id, :account_type, :first_name, :last_name, :username, :email, :avatar
  json.url account_url(account, format: :json)
end
