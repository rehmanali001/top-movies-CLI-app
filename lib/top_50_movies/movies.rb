class Movies

    attr_accessor :genre, :title, :year, :description

    @@all = []

    def initialize(title, year, genre, description)
        @title = title 
        @year = year
        @genre = genre 
        @description = description
        @@all << self
    end 

    def self.all 
        @@all
    end 
end 