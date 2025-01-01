module Ltm
  class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end
    def new
      @task = Task.new
      @users = User.all
      @tags = Tag.all
    end
    def create
      @task = Task.create(task_params)
      if @task.save
        redirect_to tasks_path, notice: "Task created"
      else
        render :new
      end
    end


    private
    def task_params
      params.require(:task).permit(:title,:status,:body,:due,:ltm_user,:ltm_tag)
    end
  end
end
