json.array!(@account_groups) do |account_group|
  json.extract! account_group, :id, :account_id, :group_id
  json.url account_group_url(account_group, format: :json)
end
