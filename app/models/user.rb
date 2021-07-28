class User < ApplicationRecord
	enum role: [:owner, :delar]
	has_many :products, dependent: :destroy
end
