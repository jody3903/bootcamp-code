class UsersController < ApplicationController

    def create 
        name = params[:user][:name]

        found_user = User.find_by(name: name)
        if found_user   
            session[:user_id] = found_user.id
        else

            newly_created_user = User.create(name: name)
            session[:user_id] = newly_created_user.id
        end

        redirect_to :comments
    end
    # def index
    #         @user = User.all
    #         @comment = Comment.all
    #         @person_id = User.find_by(params[:id])
    #         @user_messages = User.where(id: @person_id).first
            
    #     end

    # def show
    #     @user = User.find(params[:id])
    #     @comment = @user.comments
    # end

    # def create
    #     person_id = params[:user][:id]
    #     comments = Comment.create(id: person_id)
    # end
        
        
    end

