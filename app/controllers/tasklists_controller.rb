class TasklistsController < ApplicationController
  respond_to :json

  def index
    @tasklists = Tasklist.all
  end

  def show
    @tasklist = Tasklist.find(params[:id])
    @tasks = @tasklist.tasks.all
  end

  def create
    @tasklist = Tasklist.new(tasklist_params)

    if @tasklist.save
      render "tasklists/show"
    else
      respond_with @tasklist
    end
  end

  def update
    @tasklist = Tasklist.find params[:id]
    @tasklist.update_attributes tasks_attributes: params[:tasks_attributes] if params[:tasks_attributes]

    if @tasklist.save
      render "tasklists/show"
    else
      respond_with @tasklist
    end
  end

  def destroy
    tasklist = Tasklist.find params[:id]
    tasklist.destroy
    # empty json for backbone
    render json: {}
  end

  private
  def tasklist_params
    params.require(:tasklist).permit(:id, :name, tasks_attributes: [:id, :name, :status, :details])
  end

end
