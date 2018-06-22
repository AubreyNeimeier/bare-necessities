class Event < ApplicationRecord
    belongs_to :user
    has_many :tasks
    validates :title, presence: true
    validates :date, presence: true
end
