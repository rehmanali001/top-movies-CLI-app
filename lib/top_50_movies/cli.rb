class CLI

        def call
            puts "Welcome to IMDB's top 50 Movies List!"

            Scraper.scrape_movies

            Movies.all.each.with_index(1) do |app, i|
                puts "#{i}. #{app.title}"
        
            end
          menu
        end
    
        def menu 
            puts ""
            puts "Please enter the number of the movie you'd like more info on:"
            input = gets.strip
        
            if input.to_i > 0 && input.to_i <= 50
            movie = Movies.all[input.to_i - 1] 

            puts ""
            puts "#{movie.title}"
            puts "Year: #{movie.year}"
            puts "Genre: #{movie.genre}"
            puts "Description: #{movie.description}"
            menu
            elsif input == "exit"
            puts ""
            puts "Thank you and goodbye!"
            else 
            puts ""
            puts "Invalid Choice..."    
            menu
        end 
    end
end
