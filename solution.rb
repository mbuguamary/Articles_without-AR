# Please copy/paste all three classes into this file to submit your solution!
class Author
    attr_reader :name
   def initialize(name)
    @name=name
   end

  #  `Author#articles`
     def articles
     Article.all.select{|article|article.author.self.name}
     end
     def magazines
      articles.map(|article|article.magazine).uniq
     end
    #  `Author#add_article(magazine, title)`
     def add_article(magazine,title)
      Article.create(self,magazine,tittle)
     end
    #`Author#topic_areas`
     def topic_areas
      magazines.collect{|magazine|magazine.category}.uniq
     end

end

class Magazine  
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
      def magazine_articles
        Article.all.select{|article|article.magazine.name==self.name}
        end

        # `Magazine#contributors`
        def contributors
          magazine_articles.collect{|articles|articles.author}.uniq
        end
        # `Magazine#article_titles`
        def article_titles
          magazine_articles.collect{|article|article.title}
        end
        # `Magazine.find_by_name(name)`
        def self.find_by_name(name)
        magazine={|magazine|magazine.name==name}
        magazine.name
        end
        # `Magazine#contributing_authors`
        def contributing_authors
          author=magazine_articles.map {|article|article.author}.uniq
            if author.artilce.length>2
              article.author
            end
        
        end

end

class Article 
     attr_reader :magazine, :title
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
      def author
        @author.name
      end
    end