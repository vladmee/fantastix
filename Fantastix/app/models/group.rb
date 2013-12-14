class Group < ActiveRecord::Base
	has_many :posts
	has_many :account_groups
    has_many :accounts, through: :account_groups
end
