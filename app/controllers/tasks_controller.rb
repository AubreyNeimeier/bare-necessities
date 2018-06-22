class TasksController < ApplicationController 
    before_action :require_logged_in
    def show
        @event = Event.find_by(id: params[:id])
        @task = Task.find_by(id: params[:task_id])
    end


    def create
        @task = Task.new(task_params)
        @task.user = current_user
        if @task.save
            redirect_to task_path(@task)
        else
            redirect_to user_path(@task.user)
        end

    end


    private

    def task_params
        params.require(:task).permit(:event_id, :description, :status)
    end

end
