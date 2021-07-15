class Array 
    def sum
        total = 0
        self.each {|value| total += value if value.is_a?(Numeric)}
        total
    end
end

p [1, "hello", 2, 3, false, 4].sum