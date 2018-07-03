class Event < ApplicationRecord
    belongs_to :user
    has_many :tasks
    validates :title, presence: true
    validates :date, presence: true


    def today
        Date.today
    end

    def seven_days_later
        Date.today + 7 
    end

    def self.collect_weekly_events
       @events = Event.where("date_object >= ? AND date_object <=?", Date.today, Date.today + 7 )
       #binding.pry
    end


end
