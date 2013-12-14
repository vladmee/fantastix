class Account < ActiveRecord::Base
	has_many :posts
	has_many :account_groups
    has_many :groups, through: :account_groups
end
