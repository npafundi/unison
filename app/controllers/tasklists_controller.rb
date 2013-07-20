class TasklistsController < ApplicationController
  respond_to :json

  def index
    @tasklists = Tasklist.all
  end

  def show
    @tasklist = Tasklist.find(params[:id])
    @tasks = @tasklist.tasks.all
  end

end
