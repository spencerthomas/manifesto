class TasksController < ApplicationController
	before_action :set_task, only: [:show, :edit, :destroy, :update]
	before_action :authenticate_user!

#GET /tasks

def index
	@tasks = current_user.tasks.all
end

#GET /tasks/1

def show
	@task = Task.find(params[:id])
end

#GET /tasks/new

def new	
	@task = current_user.tasks.build
end

#GET /task/1/edit

def edit
end

#POST /tasks

def create
	@task = current_user.tasks.new(task_params)

	respond_to do |format|
		if @task.save
			format.html { redirect_to @task, notice: 'Now we are cooking with gas'}
			format.json { render :show, status: :created, location: @task }
		else
			format.html { render :new }
			format.json { render json: @task.errors, status: :unprocessable_entity }
		end
	end
end

def update
	respond_to do |format|
		if @task.update(task_params)
			format.html { redirect_to @task, note: 'Success!' }
			format.json { redner :show, status: :ok, location: @task }
		else
			format.html { render :edit }
			format.json { render json: @task.errors, status: :unprocessable_entity }
		end
	end
end

def destroy
	@task.destroy
	respond_to do |format|
		format.html { redirect_to tasks_url, notice: 'Task deleted' }
		format.json { head :no_content }

	end
end

private

	def set_task
		@task = Task.find(params[:id])
	end

	def task_params
		params.require(:task).permit(:title, :content, :completed, :user_id)
	end

end


