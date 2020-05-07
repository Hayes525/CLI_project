


class CovidTrack::CLI
    def start
        introduction
        game_loop
            
    
    end
    def introduction
        puts "Welcome user!"
    end
    def game_loop
        loop do
            menu 
            input = users_choice
            break if input == "exit"
            display_stats(input)
        end 
        def menu
    input = nil
    while input != "exit"
      puts "Enter the letter of the type of statistic you would like to see."
      input = gets.strip.downcase

      if input.to_i > 0
        puts @covid[input.to_i-1]
      elsif input == "list"
        list_stats
      else
        puts "Not sure what you want to do, type list or exit."
                end
            end
        end
        
    end
end
#def call
    #list_museums
    #menu
    #goodbye
  #end

  #def list_museums
    #puts "Smithsonian Museums:"
    #puts <<-DOC
      #1.National Air and Space Museum
      #2.National Museum of Natural History
      #3.American History
      #4.American Art Gallery
      #5.National Portrait Gallery
      #DOC
    ##@museums = Museum2::Smithsonian.museum 

    #@museums do |museum, i|
      #puts "#{i}. #{museum.name} - #{museum.hours} - #{museum.address}"
    #end
  #end

  #def menu
    #input = nil
    #while input != "exit"
      #puts "Enter the number of the museum you would like more info on or type list to see the list of Museums again or type exit."
      #input = gets.strip.downcase

      #if input.to_i > 0
        #puts @museums[input.to_i-1]
      #elsif input == "list"
        #list_museums
      #else
        #puts "Not sure what you want to do, type list or exit."
      #end
    #end
  #end

  #def goodbye
    #puts "Goodbye! Hope to see you soon."
  #end