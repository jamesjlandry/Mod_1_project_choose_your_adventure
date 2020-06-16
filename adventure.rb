require_relative './config/environment.rb'

class AdventureGame

   
    def initialize
       self.start_game()
       self.onwards()
    
    end
 
    def start_game

        puts "Please enter your Username:"

        @username = gets.chomp

        @existing_user = User.find_by(name: @username)

        if @existing_user != nil
        @player_1 = @existing_user

        puts "Continue game?"
        puts "Y/N?"

        cont = gets.chomp

            if cont == "N" 
                @existing_user.destroy
                start_game()    
            elsif cont == "Y"
                puts "Cool bro, have fun with that."
                onwards()
            else
                puts "Sorry, that is not a valid response."
                start_game()
            end
            
        else
        @player_1 = User.create({name: @username})

        puts "Please choose your Class."

        puts "Enter 1 for Wizard"
        puts "Enter 2 for Warrior"

        user_input = gets.chomp

            if user_input.to_i == 1
                @player_1 = User.find_by(name: @username)
                @player_1.update(role_id: 1, story_id: 1)
            elsif
                user_input.to_i == 2
                @player_1 = User.find_by(name: @username)
                @player_1.update(role_id: 2, story_id: 2)
            else
                puts "Sorry, that is not a valid role."
            end
        end    

    end

    def onwards

            while true 
            
            puts ""
            puts "#{@player_1.story.text}"
            puts ""
            puts "Enter 1 for: #{@player_1.story.option_1}."  
            puts ""
            puts "Enter 2 for: #{@player_1.story.option_2}."
            #puts "Enter 3 for #{@player_1.story_id: "3"}"

            user_choice = gets.chomp

            case user_choice.to_i
            
            when 1
                @player_1 = User.find_by(name: @username)
                pick = @player_1.story.option_1_link_id
                @player_1.update(story_id: pick)
                if pick == nil
                    false
                    puts "Seriously, you ded. Insert .25 to continue."
                end
            when 2
                @player_1 = User.find_by(name: @username)
                pick = @player_1.story.option_2_link_id
                @player_1.update(story_id: pick)
                    if pick == nil
                        false
                        puts "Seriously, you ded. Insert .25 to continue."
                    end

            when 3
                false

            
            end
               
        end
    end

    #start_game()
    #continue_game()
end

AdventureGame.new()
# method here to start the loop for pulling by story_id from User class.




# method to create username or continue based on gets.chomp

# if new game: puts opening text, if continue: puts text from story_id in User_id

# when user makes a choice, update user table with new story_id

# method to call role_id based on choices to update correct story_id column

# method for linking choices back to the story primary id


#class Game

# def new_user(input)
# username = gets.chomp()



# current_user = User.create({ name: username }) 



# end


# end