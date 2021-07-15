require_relative 'length_conversions'

class Gadget
    
    attr_accessor :username
    attr_reader :production_number, :apps
   
    
    def initialize(username, password)
        @username = username
        @password = password
        @production_number = generate_production_number
        @apps = []
    end

    def to_s
        "Gadget #{production_number} has the username #{username}. 
        It is made from the #{self.class} class and it
         has the ID #{self.object_id}"
    end

    def intall_app(name)
        app = AppStore.find_app(name)
        @apps << app unless @apps.include?(app)
    end

    def delete_app(name)
        app = apps.find {|value| value.name == name}
        apps.delete(app) unless app.nil?
    end

    def reset(username, password)
        self.username = username
        self.password = password
        self.apps = []
    end

    def password=(new_password)
        if validate_password(new_password)
            @password = new_password
        end
    end

    private

    attr_writer :apps

    def generate_production_number
        start_digits = rand(10000..999999)
        end_digits = rand(10000..999999)
        alphabet = ("A".."Z").to_a
        middle_digits = "2021"
        5.times {middle_digits << alphabet.sample}
        "#{start_digits}-#{middle_digits}-#{end_digits}"
    end

    def validate_password(new_password)
        new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
    end
end

g = Gadget.new("avilee", "password")

g.intall_app(:Chat)
g.intall_app(:Twitter)
g.intall_app(:Weather)
p g.apps

g.delete_app(:Chat)
p g.apps