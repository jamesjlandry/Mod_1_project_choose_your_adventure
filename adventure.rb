require_relative './config/environment.rb'
ActiveRecord::Base.logger = nil

class AdventureGame

   
    def initialize
       self.start_game()
       self.onwards()
    
    end
 
    def start_game

        puts "Welcome brave adventurer, or bored person just trying to play a game for a few minutes."
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
            puts ""
            puts "Enter 3 to quit this dumb game. Seriously, why did you start it in the first place? You might come back and play later. Probably not though."
            puts ""


            user_choice = gets.chomp

            case user_choice.to_i
            
            when 1
                @player_1 = User.find_by(name: @username)
                pick = @player_1.story.option_1_link_id
                @player_1.update(story_id: pick)
                case pick
                when 45
                    @player_1.destroy
                    start_game()
                when 46
                    @player_1.destroy
                    return false
                when 47
                    @player_1.destroy
                    puts "Go play a fun game now, like Smash Bros. or CoD"
                    return false
                end
            when 2
                @player_1 = User.find_by(name: @username)
                pick = @player_1.story.option_2_link_id
                @player_1.update(story_id: pick)
                    case pick
                    when 45
                        @player_1.destroy
                        start_game()
                    when 46
                        @player_1.destroy
                        return false
                    when 47
                        @player_1.destroy
                        puts "Go play a fun game now, like Smash Bros. or CoD"
                        return false
                    end

            when 3
                puts "Thank you for playing, I guess."
                puts ""
                return false
            
            end

        end
    end
end

AdventureGame.new()
