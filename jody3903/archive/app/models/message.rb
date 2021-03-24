class Message < ApplicationRecord
    belongs_to :chat
    def print_message
        "this is a comment about #{chat.topic}: #{comment}"
    end
end
