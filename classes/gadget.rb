class ConvenienceStore
    include Enumerable
    attr_reader :snacks

    def initialize
        @snacks = []
    end

    def add_snack(snack)
        snacks << snack
    end

    def each
        snacks.each do |value|
            yield value
        end
    end
end

bodega = ConvenienceStore.new
bodega.add_snack("soup")
bodega.add_snack("cookies")
bodega.add_snack("crack")
bodega.add_snack("reeses")
bodega.add_snack("granola")
bodega.each {|value| puts "#{value} is delicious!"}
p bodega.map {|value| value.upcase}
p bodega.reject { |value| value.downcase.include?("o")}
p bodega.sort
