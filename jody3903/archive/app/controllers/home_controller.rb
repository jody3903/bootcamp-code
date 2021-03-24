class HomeController < ApplicationController
    def index
        if session[:number].nil?
            session[:number]=0
        end
        
        
        #session[:name] = "jody"
        session[:number] = session[:number] + 1
        number = session[:number]
        render plain: "Hello World #{number}"
    end


    def other
    render plain: "other world #{session[name]}"
    end

end


