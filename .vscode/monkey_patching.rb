class Book
    attr_accessor :title, :author
    
    def initialize(farm, author, pages)
        @title = farm
        @author = author
        @pages = pages
    end

    def print_title
        p title
    end

    def print_auth
        p author
    end
end

newb = Book.new("anythi", "new", 23)
newb.print_auth