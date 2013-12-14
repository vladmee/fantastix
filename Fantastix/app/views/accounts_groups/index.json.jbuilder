json.array!(@accounts_groups) do |accounts_group|
  json.extract! accounts_group, :id, :account_id, :group_id
  json.url accounts_group_url(accounts_group, format: :json)
end
