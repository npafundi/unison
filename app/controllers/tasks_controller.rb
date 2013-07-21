class TasksController < ApplicationController
  respond_to :json

  def destroy
    task = Task.find params[:id]

    task.destroy
    # return empty object for Backbone
    render json: {}
  end
end
