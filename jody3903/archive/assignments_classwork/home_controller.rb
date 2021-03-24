class HomeController < ApplicationController
    def index
        # friends = ["Lexi", "Kate", "TJ", "Jenks", "McKay"] option 1
        # render plain: friends.sample option 2
        #render plain: "ok the time is #{Time.now}"
        render plain: "Say Hi {#choose_a_friend}" 
    end
    def choose_a_friend
        friends = ["Lexi", "Kate", "TJ", "Jenks", "McKay"]
    end
end


