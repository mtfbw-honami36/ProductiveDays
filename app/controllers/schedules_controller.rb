class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to calendars_path
    else
      render :new
    end
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

  def destroy
    if @schedule.destroy
      redirect_to root_path
    else
      render :show
    end
  end
  
  private

  def schedule_params
    params.require(:schedule).permit(:name, :start_time, :end_time, :countdown_id, :color_id)
  end

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end
end
