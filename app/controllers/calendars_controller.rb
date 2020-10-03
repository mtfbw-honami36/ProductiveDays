class CalendarsController < ApplicationController
  def index
    @schedule = Schedule.all
  end
end
