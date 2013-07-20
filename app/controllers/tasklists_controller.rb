class TasklistsController < ApplicationController
  respond_to :json

  def index
    @tasklists = Tasklist.all
  end

end
