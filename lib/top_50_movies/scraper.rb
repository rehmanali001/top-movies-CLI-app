require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper

    def self.scrape_movies
        html = open("https://www.imdb.com/search/title/?groups=top_250&sort=user_rating")
        doc = Nokogiri::HTML(html)
        
        doc.css(".lister-item-content").each do |movie_scrape|
        title = movie_scrape.css("h3 a").text.gsub(/\s+/, " ")
        year = movie_scrape.css(".lister-item-year").text.gsub(/\s+/, " ")
        genre = movie_scrape.css(".genre").text.gsub(/\s+/, " ")
        description = movie_scrape.css("p.text-muted")[1].text.gsub(/\s+/," ")
        Movies.new(title, year, genre, description)
        #binding.pry
        end
    end
end