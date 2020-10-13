class CalendarsController < ApplicationController
  
  def top
  end
  
  def index
    @schedule = Schedule.all
    @todos = Todo.all
    @todo = Todo.new
  end
end
