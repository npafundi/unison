class TasklistsController < ApplicationController
  respond_to :json

  def index
    @forms = Tasklist.all
  end

end
