class TodoController < ApplicationController
    def index
        puts "------index------"
        render json: {data: Todo.all()}
    end

    def show
        puts "------show------"
        render json: {data: Todo.find(params[:id])}
    end

    def create
        puts "------create------"
        Todo.create(title: params["title"])
    end
end



