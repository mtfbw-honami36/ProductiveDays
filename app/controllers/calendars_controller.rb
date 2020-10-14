class CalendarsController < ApplicationController

  def top
  end
  
  def index
    @schedule = Schedule.where(user_id: current_user.id).all
    @todos = Todo.where(user_id: current_user.id).all
    @todo = Todo.new
  end
end
