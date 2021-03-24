class ChatsController < ApplicationController
    
    def index #from class
        #chats = Chat.all.includes(:comment)
        chat_name = params[:topic]
        @chat = Chat.where(topic: chat_name).first
        #render plain: "hooked up! we are on #{chat_name}"
        #message_bodies = comment_map { |comment| comment.body }
        #render plain: "We are on #{chat.topic}: #{message.comment}"
        #chat = Chat.find_by(name: chat_name) same as chat = Chat.where(name: chat_name).first
    end

    def display_all_chats
        chats = Chat.all
        chats_topics = chats.map {|chat| chat.topic}.join(",")
        render plain: chats_topics
    end
    def show
        chats = Chat.find(params[:id])
    end
    
    def create
        topic = params["chat"]["topic"]
        Chat.create(topic: topic)

        render plain: "created! "
    
    end

    def index_for_topic
        chats = Chat.all
        comments = Message.all
        chats_topics = chats.map {|chat| chat.topic}.join(",")
        message_body = comments.map {|message| message.comment}.join(", ")
        render plain: message_body
        # chats = Chat.all.includes(:message)
        # chat_name = params[:topic]
        # message = Message.where(id: params[:id]).each
        # render plain: "this is a comment about #{chat_name}: #{message}"
        # chats = Chat.all.includes(:comment)
        # comment_text = params[:comment]
        # chat_name = params[:topic]
        # chats.each do |chat|
        #     chat.comment

    end


end




