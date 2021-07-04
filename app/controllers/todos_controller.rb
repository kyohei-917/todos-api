class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  def index
    @todos = Todo.all
    json_response(@todos)
  end

  def create
    @todo = Todo.new(todo_params)
    json_response(@todo)
  end

  def show
    json_response(@todo)
  end

  def update
    @todo.update(todo_params)
  end

  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def todo_params
    params.permit(:title, :created_by)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

end

