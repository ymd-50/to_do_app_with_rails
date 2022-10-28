class UserController < ApplicationController
    def show
        puts "------show------"
        render json: {data: User.find(params[:id])}
    end

    def create
        puts "------create------"
        User.create(email: params[:email], password: params[:password])
    end
end