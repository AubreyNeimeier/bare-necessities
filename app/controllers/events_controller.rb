class EventsController < ApplicationController

    def new
        @event = Event.new

    end

    def show

    end
    

    def create
        @event = Event.new(event_params)
        @event.user = current_user
        @event.date = Date.new(params[:event]["date(1i)"].to_i, params[:event]["date(2i)"].to_i, params[:event]["date(3i)"].to_i)
        #binding.pry
        
        if @event.save
            redirect_to event_path(@event)
          
        else
            redirect_to user_path(current_user.id)
        end

    end

    

    private
    
    def event_params
        params.require(:event).permit(:title, :description, :start_time, :end_time, "date(1i)", "date(2i)", "date(3i)")
    end


end

