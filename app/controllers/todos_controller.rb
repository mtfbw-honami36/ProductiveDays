class TodosController < ApplicationController
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to root_path
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    if @todo.destroy
      redirect_to root_path
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:name).merge(user_id: current_user.id)
  end
end
