class CLI

    def call
        puts "Welcome to Star Wars Person Informer!"
        puts "To see List of People, enter 'People'"
        puts "To exit, just enter exit"
        API.get_data
        menu
    end

    
  
    def menu
        input = gets.strip.downcase

        if input == "people"
            people_list
            menu
        elsif input == "exit"
            goodbye
        else
            puts "Not sure what you meant, try again"
            menu 
    
         end
    end

    def people_list
        People.all.each_with_index do |people, index|
            puts "#{index + 1}. #{people.name}"
        end
        puts ""
        puts "Which Person do you want details about:"
        input = gets.strip.downcase

        people_selection(input)
    end

    def people_selection(people)
        person = People.find_by_name(people)
        person.each do |p|
        puts " Name: #{p.name}"
        puts " Height: #{p.height}"
        puts " Mass: #{p.mass}"
        puts " Gender: #{p.gender}"
        end 
        #puts "#{people}"
        
    end

    def goodbye
       puts "See ya later"
    end
end