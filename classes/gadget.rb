class Gadget

end

# puts Gadget.superclass
# puts Gadget.superclass.superclass


phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

puts phone.respond_to?(:class)
puts phone.respond_to?(:methods)
puts phone.respond_to?(:length)