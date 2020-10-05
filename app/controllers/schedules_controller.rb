class SchedulesController < ApplicationController
  
  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.save
    redirect_to calendars_path
  end

  private

  def schedule_params
    params.require(:schedule).permit(:name, :start_time, :end_time, :countdown_id)
  end
end
