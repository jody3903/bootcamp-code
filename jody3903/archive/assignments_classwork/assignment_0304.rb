#Exercise 1
    class Contact #1A
        def initialize(name, number) 
        @name = name
        @number = number
    end 

    def dial #1B
        puts "Reach #{@name} at #{@number}"
    end
end




#Exercise 1 - Other option
# class Contact
#     def initialize(first_name, last_name, number) 
#         @contact_name = last_name, first_name
#         @contact_number = number
#     end

#      def dial 
#          puts "Reach #{@contact_name} at #{@contact_number}"
#      end 
#  end

#taylor_data = Contact.new("Taylor", "Swift", "555-5555") 

#taylor_data.dial


#Exercise 2
 class Phone
    def initialize
        @listing = Hash.new do |name, number|
        end

    def add_contact(name, number)
         @listing[name] = Contact.new(name, number)
         
    end
     def call(name)
        contact = @listing[name] #returns instance contact
        @listing[name].dial
     end
 end
end
 taylor_swift = Contact.new("Taylor Swift", "555-5555") 
 #taylor_swift.dial

phone = Phone.new
phone.add_contact("Lexi Adams", "5555555")
phone.call("Lexi Adams")

phone.add_contact("john", "555-5555")
phone.call("Lexi Adams")
phone.call("john")



# Solution
# class Contact
#     def initialize(name, number)
#         @name = name
#         @number = number
#     end

#     def dial
#         puts "Dialing #{@name} at #{@number}"
#     end
# end

# class Phone
#     def initialize
#         @phone_book = {} # turns it into hash || same as Hash.new do
#     end

#     def add_contact(name, number)
#         @phone_book[name] = Contact.new(name, number)
#     end

#     def dial(name)
#         @phone_book[name].dial
#         contact = @phone_book[name]
#         # if contact
#         #     contact.dial
#         # else 
#         #     puts "no such contact: #{name}"
#         # end
#     end
# end    
# contact = Contact.new("john", "555-5555")
# contact.dial

# phone = Phone.new
# phone.add_contact("john", "555-5555")
# phone.dial("john")
# phone.add_contact("Lexi Adams", "5555555")
# phone.dial("Lexi Adams")
# phone.dial("Kate")

# phone.add_contact("john", "555-5555")
# phone.dial("Lexi Adams")
# phone.dial("john")
