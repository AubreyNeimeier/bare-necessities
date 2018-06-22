class TasksController < ApplicationController 
    before_action :require_login
    def show
        @task = Task.find_by(id: params[:id])
        #binding.pry
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
        params.require(:task).permit(:event_id, :description, :status, :id)
    end

    def require_login
        return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
end
