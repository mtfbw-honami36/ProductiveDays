class CalendarsController < ApplicationController
  def index
    @schedule = Schedule.all
    @todos = Todo.all
    @todo = Todo.new
  end
end
