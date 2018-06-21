class TasksController < ApplicationController 
def show
    binding.pry
    @event = Event.find_by(id: params[:id])
    @task = Task.find_by(id: params[:task_id])
end



end
