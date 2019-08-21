class Movies
    attr_accessor :genre, :title, :year, :description
    @@all = []
def initialize(title)
    @title = title 
    @year = year
    @@all << self
end 

def self.all 
    @@all
end 
end 