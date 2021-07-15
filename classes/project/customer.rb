class CustomerId
    def initialize(name, number)
        @name = name
        @number = number
    end
    def cust_welcome
         "We confirmed the phone number #{@number}. Welcome #{@name}!"
    end
end
greet = CustomerId.new("Trisha", "(555) 555-5555")
p greet.cust_welcome
