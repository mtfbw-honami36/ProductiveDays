class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update]
  
  def show
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.save
    redirect_to calendars_path
  end

  def edit
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to schedule_path
    else
      render :edit
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit(:name, :start_time, :end_time, :countdown_id)
  end

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end
end
