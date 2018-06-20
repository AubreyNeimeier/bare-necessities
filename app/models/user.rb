class User < ApplicationRecord
    has_many :events 
    has_many :tasks, through: :events
end
