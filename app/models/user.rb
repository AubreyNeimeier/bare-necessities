class User < ApplicationRecord
    has_many :events 
    has_many :tasks, through: :events
    has_secure_password 
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true
end
