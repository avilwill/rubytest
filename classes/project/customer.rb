class CustomerId
    def cust_welcome(name, number)
        p "We confirmed the phone number #{number}. Welcome #{name}!"
    end
end
greet = CustomerId.new
p greet.cust_welcome("Trisha", "(555) 555-5555")
