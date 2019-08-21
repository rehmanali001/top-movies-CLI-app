require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper

    def self.scrape_movies
        html = open("https://www.imdb.com/search/title/?groups=top_250&sort=user_rating")
        doc = Nokogiri::HTML(html)
        
        doc.css(".lister-item-content").each do |movie_scrape|
        title = movie_scrape.css("h3 a").text.gsub(/\s+/, " ")
        Movies.new(title)
    
    end

    def self.scrape_movie_details(app_scrape)
        html = open("https://www.imdb.com/search/title/?groups=top_250&sort=user_rating")
        doc = Nokogiri::HTML(html)
        doc.css(".lister-item-content").each do |video_scrape|
        app_scrape.year = video_scrape.css(".lister-item-year").text.gsub(/\s+/, " ")
       # app_scrape.genre = video_scrape.css(".genre").text.gsub(/\s+/, " ")
       # app_scrape.description = video_scrape.css(".text-muted")[0].text.gsub(/\s+/, " ")

    end
end 
end

end