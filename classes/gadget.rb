class Gadget
    
    attr_accessor :username
    attr_reader :production_number
    attr_writer :password
    
    def initialize(username, password)
        @username = username
        @password = password
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
    end

    def to_s
        "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}"
    end
end

g1 = Gadget.new("dw_402", "c00lc0de")
g1.username = "yayaya"

p g1.username
p g1.production_number


g2 = Gadget.new("cool.user", "av999")
g3 = Gadget.new("iminlovewith", "JOHNCENAAAAA")

p g1.to_s
p g2.to_s
p g3.to_s