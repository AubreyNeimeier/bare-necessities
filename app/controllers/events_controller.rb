class EventsController < ApplicationController
    before_action :require_login
    def new
        @event = Event.new

    end

    def show
        @event = Event.find_by(id: params[:id])
    end
     
    def edit 
        @event = Event.find_by(id: params[:id])
    end

    def update
        @event = Event.find_by(id: params[:id])
        # @event.date = Date.new(params[:event]["date(1i)"].to_i, params[:event]["date(2i)"].to_i, params[:event]["date(3i)"].to_i)
         if @event.update(event_params)
            redirect_to event_path(@event)
        else
            redirect_to edit_event_path(@event)
        end       
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

    def destroy
        @event = Event.find_by(id: params[:id])
        @event.destroy
        redirect_to user_path(current_user.id)
    end


    

    private
    
    def event_params
        params.require(:event).permit(:title, :description, :start_time, :end_time, "date(1i)", "date(2i)", "date(3i)")
    end

    def require_login
        return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end

end

