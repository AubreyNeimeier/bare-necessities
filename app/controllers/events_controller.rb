class EventsController < ApplicationController

    def new

    end

    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to event_path(@event)
        else
            render user_path(@event.user)
        end

    end

    

    private
    
    def event_params
        params.require(:event).permit(:title, :description, :start_time, :end_time, :date)
    end
    

end

