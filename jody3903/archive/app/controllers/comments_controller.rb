class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        user = User.all
    end
    def create
        body = params[:comment][:body]
        created_by_user_id = params[:user][:id]
        Comment.new(body: body, user_id: created_by_user_id)
        redirect_to :comments
    end
end
