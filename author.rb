class Author
    attr_reader :name
   def initialize(name)
    @name=name
   end
end

class Magazine < Author 
    attr_accessor :name ,:category
    @@all =[]
    def initialize(name, category)
        @name=name
        @category=category
        @@all << self

    end
    def self.all
        @@all
      end
      def self.readmagazine
        self.all.each do |magazine|
          puts magazine.name
        end

end

class Article < Author
     attr_reader :title
     @@all =[]
    def initialize(author,magazine,title)
     @author = author 
     @magazine=magazine
     @title=title
     @@all << self
    end
    def self.all
        @@all
      end
    end